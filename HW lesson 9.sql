/*� ���� ������ shop � sample ������������ ���� � �� �� �������, ������� ���� ������. 
 * 
 *����������� ������ id = 1 �� ������� shop.users � ������� sample.users. ����������� ����������. */

-- ������ 2 ���� � �������� ������

DROP DATABASE IF EXISTS sample;
DROP DATABASE IF EXISTS shop;
CREATE DATABASE sample;
USE sample;

CREATE TABLE users (
    id SERIAL,
    name VARCHAR(255)
    );

CREATE DATABASE shop;
USE shop;

CREATE TABLE users (
    id SERIAL,
    name VARCHAR(255)
    );

INSERT INTO users (name) VALUES
    ('Ivan'),
    ('Sergey'),
    ('Tcar');

-- ����������

START TRANSACTION;
    INSERT INTO sample.users (SELECT * FROM shop.users WHERE id = 1);
    DELETE FROM shop.users WHERE id = 1;
COMMIT;

SELECT * FROM shop.users;
SELECT * FROM sample.users;

/* �������� �������������, ������� ������� �������� name �������� ������� 
 * �� ������� products � ��������������� �������� �������� name �� ������� catalogs.*/ 

-- ������ ������������� 

CREATE VIEW prod_name (prod_name, cat_name) AS 
    SELECT products.name, catalogs.name FROM 
        products        
        JOIN catalogs
        ON products.id = catalogs.id;
    
SELECT * FROM prod_name;

/*����� ������� ������� � ����������� ����� created_at. 
 * � ��� ��������� ���������� ����������� ������ �� ������ 2018 ���� 
 * '2018-08-01', '2018-08-04', '2018-08-16' � 2018-08-17. 
 * ��������� ������, ������� ������� ������ ������ ��� �� ������, ��������� � 
 * �������� ���� �������� 1, ���� ���� ������������ � �������� ������� � 0, 
 * ���� ��� �����������. */

-- ������ �������

CREATE TABLE test_table (
id SERIAL,
name VARCHAR (255),
created_at date
)


-- �������� ������
INSERT INTO test_table (name, created_at) VALUES 
('������ 1', '2018-08-01'),
('������ 2', '2018-08-04'),
('������ 3', '2018-08-16'),
('������ 4', '2018-08-17');

-- ������ ��������� ������� � ����� �������
CREATE TEMPORARY TABLE august_date (days INT);

INSERT INTO august_date (days) VALUES 
(1), (2), (3), (4), (5), (6), (7), (8), (9), (10),
(11), (12), (13), (14), (15), (16), (17), (18), (19), (20),
(21), (22), (23), (24), (25), (26), (27), (28), (29), (30), (31);


-- ������ ������ � ������� ����� left join ������� NULL ������� ����� IF ��������� � 1 ��� 0
-- �.�. ������� ���� ������ ��� 1 ����� (������ 2018 ����), �� � ������ ������� ������ ����� ������ ������ ��� ���� �����

SELECT date(concat('2018-08-', august_date.days)) AS aug_day, 
    IF (test_table.created_at IS NULL, 0, 1) AS target
        FROM august_date
        LEFT JOIN test_table
        ON august_date.days = DAYOFMONTH(test_table.created_at); 
        
    
/* ����� ������� ����� ������� � ����������� ����� created_at. �������� ������, 
 *������� ������� ���������� ������ �� �������, �������� ������ 5 ����� ������ �������. */
    
    
-- � ������ � ���� 2 �������� �������, ����������� ������������ �� �����, �� �� ��������� ����� 5 �������, ���� ���� 5-� � ����� ������� ���������
-- ������ �������, � ������ ��� ����� 5 �������

-- ������ �������� ������
    
CREATE TABLE task_3 (
id SERIAL,
name VARCHAR (255),
created_at date
);

INSERT INTO task_3 (name, created_at) VALUES 
('������ 1', '2018-08-01'),
('������ 2', '2018-05-04'),
('������ 3', '2018-08-16'),
('������ 4', '2018-07-17'),
('������ 5', '2018-08-21'),
('������ 6', '2018-08-04'),
('������ 7', '2018-05-16'),
('������ 8', '2018-08-17'),
('������ 9', '2018-08-01'),
('������ 10', '2018-08-04'),
('������ 11', '2015-08-16'),
('������ 12', '2013-08-17'),
('������ 13', '2020-08-01'),
('������ 14', '2018-08-04'),
('������ 15', '2018-04-16'),
('������ 16', '2017-08-31'),
('������ 17', '2018-08-04'),
('������ 18', '2018-08-16'),
('������ 19', '2019-08-17');

-- ������� 1

DELETE task_3 FROM task_3 
    JOIN 
        (SELECT created_at FROM task_3 ORDER BY created_at DESC LIMIT 4, 1 
        ) AS last_date
    ON task_3.created_at < last_date.created_at;
    
-- ������� 2

DELETE task_3 FROM task_3 
    LEFT JOIN
        (SELECT id FROM task_3 ORDER BY created_at DESC LIMIT 5) AS limits
    ON limits.id = task_3.id
    WHERE limits.id IS NULL;

-- ��������� ���������
SELECT * FROM task_3 ORDER BY created_at DESC;


/*�������� �������� ������� hello(), ������� ����� ���������� �����������, 
 * � ����������� �� �������� ������� �����. � 6:00 �� 12:00 ������� ������ 
 * ���������� ����� "������ ����", � 12:00 �� 18:00 ������� ������ ���������� 
 * ����� "������ ����", � 18:00 �� 00:00 � "������ �����", 
 * � 00:00 �� 6:00 � "������ ����". */

DELIMITER //

CREATE FUNCTION hello ()
RETURNS VARCHAR(20) NO SQL
BEGIN
    DECLARE t TINYINT;
    SET t = HOUR(NOW()); 
    CASE     
        WHEN t BETWEEN 6 AND 11 THEN
           RETURN "������ ����";
        WHEN t BETWEEN 12 AND 17 THEN
           RETURN "������ ����";
        WHEN t BETWEEN 18 AND 23 THEN
          RETURN "������ �����";
        WHEN t BETWEEN 0 AND 5 THEN
          RETURN "������ ����";
    END CASE;
END//

DELIMITER ;

/* � ������� products ���� ��� ��������� ����: name � ��������� ������ � description � ��� ���������.
 * ��������� ����������� ����� ����� ��� ���� �� ���. ��������, ����� ��� ���� ��������� �������������� �������� NULL �����������.
 *  ��������� ��������, ��������� ����, ����� ���� �� ���� ����� ��� ��� ���� ���� ���������. ��� ������� ��������� ����� NULL-�������� ���������� �������� ��������.*/




DELIMITER //

CREATE TRIGGER check_name_description_insert BEFORE INSERT ON products
FOR EACH ROW
BEGIN
    IF NEW.name IS NULL AND NEW.description IS NULL THEN 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = '��������� ��������� NULL � ���� name � description';   
    END IF;
END//

DELIMITER ;


/* (�� �������) �������� �������� ������� ��� ���������� ������������� ����� ���������. 
 *������� ��������� ���������� ������������������ � ������� ����� ����� ����� ���� ���������� �����. 
 *����� ������� FIBONACCI(10) ������ ���������� ����� 55.*/

-- ���������� ����� ����

DELIMITER //

CREATE FUNCTION FIBONACCI(numbers INT)
RETURNS INT DETERMINISTIC
BEGIN 
 
    DECLARE num1, results INT DEFAULT 0;
    DECLARE num2, i INT DEFAULT 1;

    IF numbers = 1 THEN
        RETURN 1;
    END IF;

    WHILE i < numbers DO
        SET i = i + 1;
        SET results = num1 + num2;
        SET num1 = num2;
        SET num2 = results;        
    END WHILE;
    RETURN results;
        
END//

DELIMITER ;