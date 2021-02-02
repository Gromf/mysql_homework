CREATE DATABASE project;

USE project;

DROP TABLE IF EXISTS users; 

CREATE TABLE users (
id SERIAL PRIMARY KEY COMMENT "уникальный идентификатор, лицевой счет",
first_name VARCHAR(100) NOT NULL COMMENT "Имя",
last_name VARCHAR(100) NOT NULL COMMENT "Фамилия",
patronymic VARCHAR(100) COMMENT "Отчество",
passport_series INT UNSIGNED NOT NULL COMMENT "серия паспорта",
passport_number INT UNSIGNED NOT NULL COMMENT "номер паспорта",
balance INT NOT NULL DEFAULT 0 COMMENT "текущий баланс клиента",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "дата создания",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "дата изменения"
);

DROP TABLE IF EXISTS profiles;

CREATE TABLE profiles (
user_id SERIAL PRIMARY KEY COMMENT "Ссылка на пользователя",
address_id INT UNSIGNED NOT NULL DEFAULT 1 COMMENT "Ссылка на адрес прописки",
address_ap INT UNSIGNED NOT NULL DEFAULT 0 COMMENT "Номер квартиры прописки",
email VARCHAR(100) COMMENT "почта клиента",
phone VARCHAR(10) NOT NULL UNIQUE COMMENT "Телефон клиента",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "дата создания",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "дата изменения"
);

DROP TABLE IF EXISTS address;

CREATE TABLE address (
id INT UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT COMMENT "уникальный идентификатор адреса",
city VARCHAR(100) NOT NULL COMMENT "Город",
street VARCHAR(100) NOT NULL COMMENT "улица",
building VARCHAR(100) NOT NULL COMMENT "дом",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "дата создания",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "дата изменения",
PRIMARY KEY (city, street, building) COMMENT "составной ключ адреса"
);

DROP TABLE IF EXISTS connections;

CREATE TABLE connections (
id SERIAL PRIMARY KEY COMMENT "уникальный идентификатор подключения",
name VARCHAR(25) NOT NULL UNIQUE COMMENT "уникальное имя подключения",
user_id BIGINT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
service_type_id TINYINT UNSIGNED NOT NULL COMMENT "ссылка на тип услуги",
tariff_plan_id INT UNSIGNED NOT NULL COMMENT "ссылка на тарифный план",
user_login VARCHAR(25) NOT NULL UNIQUE COMMENT "логин",
user_password VARCHAR(25) NOT NULL COMMENT "пароль",
commentary VARCHAR(255) COMMENT "комментарий",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "дата создания",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "дата изменения"
);

DROP TABLE IF EXISTS connections_tech;

CREATE TABLE connections_tech (
connections_id BIGINT UNSIGNED PRIMARY KEY COMMENT "ссылка на подключение", 
technology_type ENUM ('FTTx', 'xDSL', 'xPON') NOT NULL COMMENT "тип технологии",
address_id INT UNSIGNED NOT NULL COMMENT "ссылка на адрес установки",
address_ap INT UNSIGNED NOT NULL DEFAULT 0 COMMENT "Номер квартир установки",
techbase_id BIGINT UNSIGNED NOT NULL COMMENT "ссылка на техданные",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "дата создания",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "дата изменения"
);

DROP TABLE IF EXISTS service_type;

CREATE TABLE service_type (
id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор тип услуги",
name VARCHAR(25) NOT NULL UNIQUE COMMENT "Название типа услуги", 
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "дата создания",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "дата изменения"
);

DROP TABLE IF EXISTS techbase;

CREATE TABLE techbase (
id SERIAL COMMENT "уникальный идентификатор тех данных",
tech VARCHAR(100) NOT NULL COMMENT "наименование тех данных",
tech_port INT UNSIGNED NOT NULL COMMENT "номер порта",
address_id INT UNSIGNED NOT NULL COMMENT "ссылка на адрес",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "дата создания",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "дата изменения",
PRIMARY KEY (address_id, tech, tech_port) COMMENT "составной ключ тех данных"
);

DROP TABLE IF EXISTS tariff_plan;

CREATE TABLE tariff_plan (
id INT UNSIGNED UNIQUE NOT NULL AUTO_INCREMENT COMMENT "идентификатор тарифного плана",
name VARCHAR(255) NOT NULL COMMENT "название тарифного плана",
technology_type ENUM ('FTTx', 'xDSL', 'xPON') NOT NULL COMMENT "тип технологии",
service_type_id TINYINT UNSIGNED NOT NULL COMMENT "ссылка на тип услуги",
speed INT UNSIGNED NOT NULL COMMENT "скорость по тарифу",
cost INT UNSIGNED NOT NULL COMMENT "стоимость тарифа",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "дата создания",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "дата изменения",
PRIMARY KEY (service_type_id, technology_type, name) COMMENT "составной ключ тарифного плана"
);

DROP TABLE IF EXISTS payment_history;

CREATE TABLE payment_history (
id SERIAL PRIMARY KEY COMMENT "Идентификатор оплаты",
user_id BIGINT UNSIGNED NOT NULL COMMENT "ссылка на пользователя",
payment INT NOT NULL COMMENT "размер платежа",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "дата оплаты"
);

DROP TABLE IF EXISTS accruals;

CREATE TABLE accruals (
user_id BIGINT UNSIGNED NOT NULL COMMENT "ссылка на клиента",
date_period DATE NOT NULL COMMENT "расчетный период",
accruals_amount INT NOT NULL COMMENT "размер начисления",
accruals_name VARCHAR(100) NOT NULL COMMENT "название начисления"
);






