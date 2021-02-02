CREATE OR REPLACE VIEW client AS
    SELECT users.id AS account, 
        users.balance AS balance,
        CONCAT_WS(" ", users.first_name, users.last_name, users.patronymic) AS full_name,
        CONCAT(users.passport_series, users.passport_number) AS passport,
        profiles.email AS 'e-mail',
        profiles.phone AS phone,
        CONCAT(address.city, ' st. ', address.street, ' buld. ', address.building, ' apartment ', profiles.address_ap) AS client_address
    FROM users 
        JOIN profiles
        ON users.id = profiles.user_id 
        JOIN address
        ON profiles.address_id = address.id;

SELECT * FROM client;
    
CREATE OR REPLACE VIEW client_connections AS
    SELECT connections.user_id AS account,
        connections.name AS access_card,
        service_type.name AS service,
        tariff_plan.name AS tariff,
        tariff_plan.cost AS cost,
        tariff_plan.speed AS speed,
        connections_tech.technology_type AS technology,
        CONCAT(address.city, ' st. ', address.street, ' buld. ', address.building, ' apartment ', connections_tech.address_ap) AS service_address
    FROM connections
    JOIN service_type
    ON connections.service_type_id = service_type.id 
    JOIN tariff_plan
    ON connections.tariff_plan_id = tariff_plan.id 
    JOIN connections_tech
    ON connections.id = connections_tech.connections_id 
    JOIN address
    ON connections_tech.address_id = address.id;

SELECT * FROM client_connections;

CREATE OR REPLACE VIEW total_connection_info AS
    SELECT connections.name AS access_card,
        connections_tech.technology_type AS technology,
        service_type.name AS service,
        tariff_plan.name AS tariff,
        CONCAT(address.city, ' st. ', address.street, ' buld. ', address.building, ' apartment ', connections_tech.address_ap) AS service_address,
        CONCAT(techbase.tech, ' port - ', techbase.tech_port) AS technical_data
    FROM connections
    JOIN connections_tech
    ON connections.id = connections_tech.connections_id 
    JOIN service_type
    ON connections.service_type_id = service_type.id
    JOIN tariff_plan
    ON connections.tariff_plan_id = tariff_plan.id 
    JOIN address
    ON connections_tech.address_id = address.id 
    JOIN techbase
    ON connections_tech.techbase_id = techbase.id; 
        
SELECT * FROM total_connection_info;  
    


-- список ТП для замены, вызывается для подключения по WHERE connections.id = Х

SELECT tariff_plan.name AS tariff,
    tariff_plan.cost AS cost,
    tariff_plan.speed AS speed,
    service_type.name AS service,
    connections_tech.technology_type AS technology
    FROM connections
    JOIN connections_tech
    ON connections.id = connections_tech.connections_id 
    JOIN tariff_plan
    ON connections.service_type_id = tariff_plan.service_type_id AND connections_tech.technology_type = tariff_plan.technology_type 
    JOIN service_type 
    ON connections.service_type_id = service_type.id
    WHERE connections.id = 1;

-- запрос начислений для пользователя
SELECT * FROM accruals WHERE user_id = 1 ORDER BY date_period, accruals_name;

-- запрос оплат пользователя
SELECT user_id, payment, created_at AS payment_data FROM payment_history WHERE user_id = 1 ORDER BY created_at;

-- вызов статистики начислений/оплат для пользователя в разрезе периодов CALL fin_info(user_id)
CALL fin_info(1);

