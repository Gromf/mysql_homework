USE project;

DROP FUNCTION IF EXISTS date_my;
DELIMITER //

CREATE FUNCTION date_my (new_date date)
RETURNS VARCHAR(50) NO SQL
BEGIN
    DECLARE res VARCHAR(50);
    SET res = concat(MONTHNAME(new_date), ' ', YEAR(new_date));
    RETURN res;
END// 

DELIMITER ;

DROP PROCEDURE IF EXISTS accruals_generator;
DELIMITER //

CREATE PROCEDURE accruals_generator (IN new_date date)
BEGIN
    INSERT INTO accruals (user_id, date_period, accruals_amount, accruals_name)  
    SELECT connections.user_id, new_date, tariff_plan.cost, concat_ws(' ', connections.name, tariff_plan.name, tariff_plan.technology_type)
    FROM connections
    JOIN tariff_plan
        ON connections.tariff_plan_id = tariff_plan.id;
END// 

DELIMITER ;


DROP PROCEDURE IF EXISTS temp_table_my_generator;
DELIMITER //

CREATE PROCEDURE temp_table_my_generator()

BEGIN
    DROP TEMPORARY TABLE IF EXISTS temp_date_table;
    CREATE TEMPORARY TABLE temp_date_table (
        user_id BIGINT,
        new_date varchar(50)
    );
    INSERT INTO temp_date_table (user_id, new_date) SELECT user_id, date_my(created_at) FROM payment_history;
    INSERT INTO temp_date_table (user_id, new_date) SELECT user_id, date_my(date_period) FROM accruals;
    
    DROP TEMPORARY TABLE IF EXISTS target_date_table;
    CREATE TEMPORARY TABLE target_date_table (
        user_id BIGINT,
        new_date varchar(50)
    );
    INSERT INTO target_date_table (user_id, new_date) SELECT DISTINCT user_id, new_date FROM temp_date_table;
    DROP TABLE temp_date_table;
END// 

DELIMITER ;

DROP PROCEDURE IF EXISTS fin_info;
DELIMITER //

CREATE PROCEDURE fin_info(IN target_user BIGINT)

BEGIN
    
    CALL temp_table_my_generator();

    SELECT DISTINCT users.id AS account,
        target_date_table.new_date AS period,
        SUM(payment_history.payment) OVER def AS payment,
        SUM(accruals.accruals_amount) OVER def AS accruals
    FROM users
    LEFT JOIN target_date_table
     ON users.id = target_date_table.user_id
    LEFT JOIN payment_history
     ON users.id = payment_history.user_id AND target_date_table.new_date = date_my(payment_history.created_at)
    LEFT JOIN accruals
     ON users.id = accruals.user_id AND target_date_table.new_date = date_my(accruals.date_period)
    WHERE users.id = target_user
    WINDOW def AS (PARTITION BY users.id, target_date_table.new_date)
    ORDER BY account;
    
END// 

DELIMITER ;


