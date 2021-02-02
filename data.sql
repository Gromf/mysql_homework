USE project;

INSERT INTO users(first_name, last_name, patronymic, passport_number, passport_series) VALUES
('Вася', 'Иванов', 'Иванович', 111111, 1111),
('Иван', 'Петров', null, 111111, 1112),
('Роман', 'Гаврилов', 'Отчевич', 111111, 1113),
('Катерина', 'Кривоногова', 'Романовна', 111111, 1114),
('Лиль', 'Фамилиевна', null, 111111, 1115),
('Махмед', 'Тестов', null, 111111, 1116),
('Кирилл', 'Сило', null, 111111, 1117),
('Владимир', 'Пырный', null, 111111, 1118),
('Джон', 'Русский', null, 111111, 1119),
('Артур', 'Мартур', null, 111111, 1110),
('Лис', 'Честный', null, 111111, 0111),
('Тетерев', 'Шашлычный', null, 111111, 1121),
('Бонифатий', 'В', 'Пальто', 111111, 1131),
('Вениамин', 'Мый', null, 111111, 1141),
('Гавриил', 'Рандом', null, 111111, 1151),
('Игорь', 'Ив', null, 111111, 1161),
('Нина', 'Ольт', 'Филтра', 111111, 1171),
('Виктория', 'Сливна', null, 111111, 1181),
('Кливленд', 'Крейсер', null, 111111, 1191),
('Бисмарк', 'Линкор', null, 111111, 1101),
('Кага', 'Авианосец', null, 111111, 1211),
('Интерпрайс', 'Имба', null, 111111, 1311),
('Лири', 'Брунестуд', null, 111111, 1411),
('Ольга', 'Вещая', null, 111111, 1511),
('Миражен', 'Видная', null, 111111, 1611);


INSERT INTO address (city, street, building) VALUES
('Moscow', 'Lenina', '1'),
('Moscow', 'Lenina', '2'),
('Moscow', 'Lenina', '3'),
('Moscow', 'Lenina', '4'),
('Moscow', 'Mira', '1'),
('Moscow', 'Mira', '2'),
('Moscow', 'Mira', '3'),
('Moscow', 'Sadovaya', '1'),
('Moscow', 'Sadovaya', '2'),
('Rostow', 'Drujbi', '1'),
('Rostow', 'Drujbi', '2'),
('Rostow', 'Drujbi', '3'),
('Rostow', 'Roz', '1'),
('Rostow', 'Roz', '1/2'),
('Rostow', 'Roz', '1/3');


INSERT INTO profiles (user_id, address_id, address_ap, email, phone) VALUES
(1, 1, 1, 'vmurphy@example.net', 5469778423),
(2, 1, 2, 'elijah89@example.net', 9741221155),
(3, 2, 1, 'rprohaska@example.com', 2459675310),
(4, 2, 2, 'mills.casimir@example.net', 1235472210),
(5, 2, 5, 'johanna.kirlin@example.net', 9058457820),
(6, 3, 1, 'akuhic@example.org', 8752312480),
(7, 3, 10, 'selina.walter@example.net', 1845221120),
(8, 4, 1, 'qthiel@example.com', 7213232320),
(9, 1, 11, 'abigale.balistreri@example.org', 8789432232),
(10, 3, 12, 'carroll.narciso@example.net', 8788322121),
(11, 9, 1, 'fritsch.geo@example.org', 4212312212),
(12, 3, 11, 'dhilpert@example.net', 2121875890),
(13, 2, 15, 'emilia.rath@example.com', 4124546560),
(14, 12, 1, 'cecile33@example.org', 2144632332),
(15, 9, 1, 'abbott.asia@example.com', 9021721126),
(16, 2, 5, 'swift.ardella@example.net', 9211002214),
(17, 8, 1, 'parker.dulce@example.com', 3165894778),
(18, 7, 3, 'myron.weimann@example.org', 3145415660),
(19, 13, 1, 'marlene69@example.org', 6845621223),
(20, 5, 9, 'tgreenfelder@example.net', 9805174220),
(21, 7, 1, 'leonard71@example.org', 2889963112),
(22, 1, 7, 'mark43@example.org', 6847423123),
(23, 5, 1, 'ikoss@example.net', 7811231236),
(24, 14, 0, 'vrice@example.org', 3548747890),
(25, 15, 0, 'stone.hettinger@example.com', 1478478780);

INSERT INTO service_type (name) VALUES
('Internet'),
('IP-TV');


INSERT INTO tariff_plan (name, technology_type, service_type_id, speed, cost) VALUES
('internet','xPON', 1, 100, 500),
('internet','FTTx', 1, 100, 500),
('internet','xDSL', 1, 10, 500),
('big_internet','xPON', 1, 1000, 1000),
('big_internet','FTTx', 1, 1000, 1000),
('unic_internet','xPON', 1, 1000, 100),
('TV','xPON', 2, 0, 500),
('TV','FTTx', 2, 0, 500),
('TV','xDSL', 2, 0, 500);


INSERT INTO connections (name, user_id, service_type_id, tariff_plan_id, user_login, user_password) VALUES
('inter_01', 1, 1, 1, 'u_login1', 'aa921bd6aed1fd63b07910fb6'),
('inter_02', 2, 1, 2, 'u_login2', 'a9f129fc3554ed8c40b692f0e'),
('inter_03', 3, 1, 3, 'u_login3', 'f8dbfd959564dbc9369876e38'),
('inter_04', 4, 1, 1, 'u_login4', 'f0fc00d1661f2c7605cf6335d'),
('inter_05', 5, 1, 1, 'u_login5', '0ff753a5e12350778b9682853'),
('inter_06', 6, 1, 1, 'u_login6', 'e4bb63262c28c50580e826c83'),
('inter_07', 7, 1, 4, 'u_login7', '7a246427816e6fa1cca98e162'),
('inter_08', 8, 1, 1, 'u_login8', '144e0440a1d5197c29691d92a'),
('inter_09', 9, 1, 1, 'u_login9', '4d5ea26aa8631858650699c05'),
('inter_10', 10, 1, 1, 'u_login10', '7e4faed0d889e69e8897dd9a7'),
('inter_11', 11, 1, 1, 'u_login11', 'f9bd1584d3fabdc64b9204da0'),
('inter_12', 12, 1, 4, 'u_login12', 'fe0d7de0c662374b8b68ba3d7'),
('inter_13', 13, 1, 1, 'u_login13', 'a72ab72cbd27e0ecc2a8e2ed3'),
('inter_14', 14, 1, 1, 'u_login14', '72b399b31f2a2c1e966d81894'),
('inter_15', 15, 1, 6, 'u_login15', '7689f484ac997c9c6d423a197'),
('inter_16', 16, 1, 1, 'u_login16', '43f0b1e28e8c51dea1f5c3627'),
('inter_17', 17, 1, 6, 'u_login17', '6ef16df8c895fbc98ad65214e'),
('inter_18', 18, 1, 1, 'u_login18', 'a74d191fc6c08a55926af5dcf'),
('inter_19', 19, 1, 1, 'u_login19', 'd6873bf5d87f926b99c1de340'),
('iptv_01', 1, 2, 7, 'tv_login1', 'de119ea57e2feb22c173a1d23'),
('iptv_02', 20, 2, 7, 'tv_login2', 'b1b01c74b2b67d56a025c553b'),
('iptv_03', 21, 2, 7, 'tv_login3', '5ce982436c39edb5ef07acfd4'),
('iptv_04', 22, 2, 7, 'tv_login4', '0971efeaec57bd51961dafa66'),
('iptv_05', 23, 2, 7, 'tv_login5', '383bd60ff7a1442e461dfedda'),
('iptv_06', 24, 2, 7, 'tv_login6', '5c7f661c8f8d9b92f8652369c'),
('iptv_07', 25, 2, 7, 'tv_login7', '8f276d8d952194864ee01c8a5'),
('iptv_08', 2, 2, 8, 'tv_login8', 'ce318e7dea60a2c35d7c7f565'),
('iptv_09', 3, 2, 9, 'tv_login9', 'c545df79f402b6088951be8eb'),
('iptv_10', 25, 2, 7, 'tv_login10', '57ad52e19ede7c6d0effbf075'),
('iptv_11', 25, 2, 7, 'tv_login11', '3a05ddf567e67a9c66a36d7f9');

INSERT INTO techbase (tech, tech_port, address_id) VALUES
('commutator_1', 1, 1),
('commutator_1', 2, 1),
('commutator_2', 1, 2),
('commutator_2', 2, 2),
('commutator_2', 3, 2),
('commutator_3', 1, 3),
('commutator_3', 2, 3),
('commutator_4', 1, 4),
('commutator_1', 4, 1),
('commutator_3', 3, 3),
('commutator_9', 1, 9),
('commutator_3', 4, 3),
('commutator_2', 4, 2),
('commutator_12', 1, 12),
('commutator_9', 2, 9),
('commutator_2', 5, 2),
('commutator_8', 1, 8),
('commutator_7', 1, 7),
('commutator_13', 1, 13),
('commutator_5', 1, 5),
('commutator_7', 2, 7),
('commutator_1', 5, 1),
('commutator_5', 2, 5),
('commutator_14', 1, 14),
('commutator_15', 1, 15);



INSERT INTO connections_tech (connections_id, technology_type, address_id, address_ap, techbase_id) VALUES
(1, 'xPON', 1, 1, 1),
(2, 'FTTx', 1, 2, 2),
(3, 'xDSL', 2, 1, 3),
(4, 'xPON', 2, 2, 4),
(5, 'xPON', 2, 5, 5),
(6, 'xPON', 3, 1, 6),
(7, 'xPON', 3, 1, 7),
(8, 'xPON', 4, 1, 8),
(9, 'xPON', 1, 11, 9),
(10, 'xPON', 3, 12, 10),
(11, 'xPON', 9, 1, 11),
(12, 'xPON', 3, 11, 12),
(13, 'xPON', 2, 15, 13),
(14, 'xPON', 12, 1, 14),
(15, 'xPON', 9, 1, 15),
(16, 'xPON', 2, 5, 16),
(17, 'xPON', 8, 1, 17),
(18, 'xPON', 7, 3, 18),
(19, 'xPON', 13, 1, 19),
(20, 'xPON', 1, 1, 1),
(21, 'xPON', 5, 9, 20),
(22, 'xPON', 7, 1, 22),
(23, 'xPON', 1, 7,23),
(24, 'xPON', 5, 1, 24),
(25, 'xPON', 14, 0, 24),
(26, 'xPON', 15, 0, 25),
(27, 'FTTx', 1, 2, 2),
(28, 'xDSL', 2, 2, 3),
(29, 'xPON', 15, 0, 25),
(30, 'xPON', 15, 0, 25);


INSERT INTO project.accruals (user_id,date_period,accruals_amount,accruals_name) VALUES
     (1,'2020-01-01',500,'inter_01 internet xPON'),
     (2,'2020-01-01',500,'inter_02 internet FTTx'),
     (3,'2020-01-01',500,'inter_03 internet xDSL'),
     (4,'2020-01-01',500,'inter_04 internet xPON'),
     (5,'2020-01-01',500,'inter_05 internet xPON'),
     (6,'2020-01-01',500,'inter_06 internet xPON'),
     (7,'2020-01-01',1000,'inter_07 big_internet xPON'),
     (8,'2020-01-01',500,'inter_08 internet xPON'),
     (9,'2020-01-01',500,'inter_09 internet xPON'),
     (10,'2020-01-01',500,'inter_10 internet xPON');
INSERT INTO project.accruals (user_id,date_period,accruals_amount,accruals_name) VALUES
     (11,'2020-01-01',500,'inter_11 internet xPON'),
     (12,'2020-01-01',1000,'inter_12 big_internet xPON'),
     (13,'2020-01-01',500,'inter_13 internet xPON'),
     (14,'2020-01-01',500,'inter_14 internet xPON'),
     (15,'2020-01-01',100,'inter_15 unic_internet xPON'),
     (16,'2020-01-01',500,'inter_16 internet xPON'),
     (17,'2020-01-01',100,'inter_17 unic_internet xPON'),
     (18,'2020-01-01',500,'inter_18 internet xPON'),
     (19,'2020-01-01',500,'inter_19 internet xPON'),
     (1,'2020-01-01',500,'iptv_01 TV xPON');
INSERT INTO project.accruals (user_id,date_period,accruals_amount,accruals_name) VALUES
     (20,'2020-01-01',500,'iptv_02 TV xPON'),
     (21,'2020-01-01',500,'iptv_03 TV xPON'),
     (22,'2020-01-01',500,'iptv_04 TV xPON'),
     (23,'2020-01-01',500,'iptv_05 TV xPON'),
     (24,'2020-01-01',500,'iptv_06 TV xPON'),
     (25,'2020-01-01',500,'iptv_07 TV xPON'),
     (2,'2020-01-01',500,'iptv_08 TV FTTx'),
     (3,'2020-01-01',500,'iptv_09 TV xDSL'),
     (25,'2020-01-01',500,'iptv_10 TV xPON'),
     (25,'2020-01-01',500,'iptv_11 TV xPON');
INSERT INTO project.accruals (user_id,date_period,accruals_amount,accruals_name) VALUES
     (2,'2020-02-01',500,'inter_02 internet FTTx'),
     (3,'2020-02-01',500,'inter_03 internet xDSL'),
     (7,'2020-02-01',1000,'inter_07 big_internet xPON'),
     (12,'2020-02-01',1000,'inter_12 big_internet xPON'),
     (1,'2020-02-01',500,'inter_01 internet xPON'),
     (4,'2020-02-01',500,'inter_04 internet xPON'),
     (5,'2020-02-01',500,'inter_05 internet xPON'),
     (6,'2020-02-01',500,'inter_06 internet xPON'),
     (8,'2020-02-01',500,'inter_08 internet xPON'),
     (9,'2020-02-01',500,'inter_09 internet xPON');
INSERT INTO project.accruals (user_id,date_period,accruals_amount,accruals_name) VALUES
     (10,'2020-02-01',500,'inter_10 internet xPON'),
     (11,'2020-02-01',500,'inter_11 internet xPON'),
     (13,'2020-02-01',500,'inter_13 internet xPON'),
     (14,'2020-02-01',500,'inter_14 internet xPON'),
     (16,'2020-02-01',500,'inter_16 internet xPON'),
     (18,'2020-02-01',500,'inter_18 internet xPON'),
     (19,'2020-02-01',500,'inter_19 internet xPON'),
     (15,'2020-02-01',100,'inter_15 unic_internet xPON'),
     (17,'2020-02-01',100,'inter_17 unic_internet xPON'),
     (2,'2020-02-01',500,'iptv_08 TV FTTx');
INSERT INTO project.accruals (user_id,date_period,accruals_amount,accruals_name) VALUES
     (3,'2020-02-01',500,'iptv_09 TV xDSL'),
     (1,'2020-02-01',500,'iptv_01 TV xPON'),
     (20,'2020-02-01',500,'iptv_02 TV xPON'),
     (21,'2020-02-01',500,'iptv_03 TV xPON'),
     (22,'2020-02-01',500,'iptv_04 TV xPON'),
     (23,'2020-02-01',500,'iptv_05 TV xPON'),
     (24,'2020-02-01',500,'iptv_06 TV xPON'),
     (25,'2020-02-01',500,'iptv_07 TV xPON'),
     (25,'2020-02-01',500,'iptv_10 TV xPON'),
     (25,'2020-02-01',500,'iptv_11 TV xPON');
INSERT INTO project.accruals (user_id,date_period,accruals_amount,accruals_name) VALUES
     (2,'2020-03-01',500,'inter_02 internet FTTx'),
     (3,'2020-03-01',500,'inter_03 internet xDSL'),
     (7,'2020-03-01',1000,'inter_07 big_internet xPON'),
     (12,'2020-03-01',1000,'inter_12 big_internet xPON'),
     (1,'2020-03-01',500,'inter_01 internet xPON'),
     (4,'2020-03-01',500,'inter_04 internet xPON'),
     (5,'2020-03-01',500,'inter_05 internet xPON'),
     (6,'2020-03-01',500,'inter_06 internet xPON'),
     (8,'2020-03-01',500,'inter_08 internet xPON'),
     (9,'2020-03-01',500,'inter_09 internet xPON');
INSERT INTO project.accruals (user_id,date_period,accruals_amount,accruals_name) VALUES
     (10,'2020-03-01',500,'inter_10 internet xPON'),
     (11,'2020-03-01',500,'inter_11 internet xPON'),
     (13,'2020-03-01',500,'inter_13 internet xPON'),
     (14,'2020-03-01',500,'inter_14 internet xPON'),
     (16,'2020-03-01',500,'inter_16 internet xPON'),
     (18,'2020-03-01',500,'inter_18 internet xPON'),
     (19,'2020-03-01',500,'inter_19 internet xPON'),
     (15,'2020-03-01',100,'inter_15 unic_internet xPON'),
     (17,'2020-03-01',100,'inter_17 unic_internet xPON'),
     (2,'2020-03-01',500,'iptv_08 TV FTTx');
INSERT INTO project.accruals (user_id,date_period,accruals_amount,accruals_name) VALUES
     (3,'2020-03-01',500,'iptv_09 TV xDSL'),
     (1,'2020-03-01',500,'iptv_01 TV xPON'),
     (20,'2020-03-01',500,'iptv_02 TV xPON'),
     (21,'2020-03-01',500,'iptv_03 TV xPON'),
     (22,'2020-03-01',500,'iptv_04 TV xPON'),
     (23,'2020-03-01',500,'iptv_05 TV xPON'),
     (24,'2020-03-01',500,'iptv_06 TV xPON'),
     (25,'2020-03-01',500,'iptv_07 TV xPON'),
     (25,'2020-03-01',500,'iptv_10 TV xPON'),
     (25,'2020-03-01',500,'iptv_11 TV xPON');
INSERT INTO project.accruals (user_id,date_period,accruals_amount,accruals_name) VALUES
     (2,'2020-04-01',500,'inter_02 internet FTTx'),
     (3,'2020-04-01',500,'inter_03 internet xDSL'),
     (7,'2020-04-01',1000,'inter_07 big_internet xPON'),
     (12,'2020-04-01',1000,'inter_12 big_internet xPON'),
     (1,'2020-04-01',500,'inter_01 internet xPON'),
     (4,'2020-04-01',500,'inter_04 internet xPON'),
     (5,'2020-04-01',500,'inter_05 internet xPON'),
     (6,'2020-04-01',500,'inter_06 internet xPON'),
     (8,'2020-04-01',500,'inter_08 internet xPON'),
     (9,'2020-04-01',500,'inter_09 internet xPON');
INSERT INTO project.accruals (user_id,date_period,accruals_amount,accruals_name) VALUES
     (10,'2020-04-01',500,'inter_10 internet xPON'),
     (11,'2020-04-01',500,'inter_11 internet xPON'),
     (13,'2020-04-01',500,'inter_13 internet xPON'),
     (14,'2020-04-01',500,'inter_14 internet xPON'),
     (16,'2020-04-01',500,'inter_16 internet xPON'),
     (18,'2020-04-01',500,'inter_18 internet xPON'),
     (19,'2020-04-01',500,'inter_19 internet xPON'),
     (15,'2020-04-01',100,'inter_15 unic_internet xPON'),
     (17,'2020-04-01',100,'inter_17 unic_internet xPON'),
     (2,'2020-04-01',500,'iptv_08 TV FTTx');
INSERT INTO project.accruals (user_id,date_period,accruals_amount,accruals_name) VALUES
     (3,'2020-04-01',500,'iptv_09 TV xDSL'),
     (1,'2020-04-01',500,'iptv_01 TV xPON'),
     (20,'2020-04-01',500,'iptv_02 TV xPON'),
     (21,'2020-04-01',500,'iptv_03 TV xPON'),
     (22,'2020-04-01',500,'iptv_04 TV xPON'),
     (23,'2020-04-01',500,'iptv_05 TV xPON'),
     (24,'2020-04-01',500,'iptv_06 TV xPON'),
     (25,'2020-04-01',500,'iptv_07 TV xPON'),
     (25,'2020-04-01',500,'iptv_10 TV xPON'),
     (25,'2020-04-01',500,'iptv_11 TV xPON');
INSERT INTO project.accruals (user_id,date_period,accruals_amount,accruals_name) VALUES
     (2,'2020-05-01',500,'inter_02 internet FTTx'),
     (3,'2020-05-01',500,'inter_03 internet xDSL'),
     (7,'2020-05-01',1000,'inter_07 big_internet xPON'),
     (12,'2020-05-01',1000,'inter_12 big_internet xPON'),
     (1,'2020-05-01',500,'inter_01 internet xPON'),
     (4,'2020-05-01',500,'inter_04 internet xPON'),
     (5,'2020-05-01',500,'inter_05 internet xPON'),
     (6,'2020-05-01',500,'inter_06 internet xPON'),
     (8,'2020-05-01',500,'inter_08 internet xPON'),
     (9,'2020-05-01',500,'inter_09 internet xPON');
INSERT INTO project.accruals (user_id,date_period,accruals_amount,accruals_name) VALUES
     (10,'2020-05-01',500,'inter_10 internet xPON'),
     (11,'2020-05-01',500,'inter_11 internet xPON'),
     (13,'2020-05-01',500,'inter_13 internet xPON'),
     (14,'2020-05-01',500,'inter_14 internet xPON'),
     (16,'2020-05-01',500,'inter_16 internet xPON'),
     (18,'2020-05-01',500,'inter_18 internet xPON'),
     (19,'2020-05-01',500,'inter_19 internet xPON'),
     (15,'2020-05-01',100,'inter_15 unic_internet xPON'),
     (17,'2020-05-01',100,'inter_17 unic_internet xPON'),
     (2,'2020-05-01',500,'iptv_08 TV FTTx');
INSERT INTO project.accruals (user_id,date_period,accruals_amount,accruals_name) VALUES
     (3,'2020-05-01',500,'iptv_09 TV xDSL'),
     (1,'2020-05-01',500,'iptv_01 TV xPON'),
     (20,'2020-05-01',500,'iptv_02 TV xPON'),
     (21,'2020-05-01',500,'iptv_03 TV xPON'),
     (22,'2020-05-01',500,'iptv_04 TV xPON'),
     (23,'2020-05-01',500,'iptv_05 TV xPON'),
     (24,'2020-05-01',500,'iptv_06 TV xPON'),
     (25,'2020-05-01',500,'iptv_07 TV xPON'),
     (25,'2020-05-01',500,'iptv_10 TV xPON'),
     (25,'2020-05-01',500,'iptv_11 TV xPON');
INSERT INTO project.accruals (user_id,date_period,accruals_amount,accruals_name) VALUES
     (2,'2020-06-01',500,'inter_02 internet FTTx'),
     (3,'2020-06-01',500,'inter_03 internet xDSL'),
     (7,'2020-06-01',1000,'inter_07 big_internet xPON'),
     (12,'2020-06-01',1000,'inter_12 big_internet xPON'),
     (1,'2020-06-01',500,'inter_01 internet xPON'),
     (4,'2020-06-01',500,'inter_04 internet xPON'),
     (5,'2020-06-01',500,'inter_05 internet xPON'),
     (6,'2020-06-01',500,'inter_06 internet xPON'),
     (8,'2020-06-01',500,'inter_08 internet xPON'),
     (9,'2020-06-01',500,'inter_09 internet xPON');
INSERT INTO project.accruals (user_id,date_period,accruals_amount,accruals_name) VALUES
     (10,'2020-06-01',500,'inter_10 internet xPON'),
     (11,'2020-06-01',500,'inter_11 internet xPON'),
     (13,'2020-06-01',500,'inter_13 internet xPON'),
     (14,'2020-06-01',500,'inter_14 internet xPON'),
     (16,'2020-06-01',500,'inter_16 internet xPON'),
     (18,'2020-06-01',500,'inter_18 internet xPON'),
     (19,'2020-06-01',500,'inter_19 internet xPON'),
     (15,'2020-06-01',100,'inter_15 unic_internet xPON'),
     (17,'2020-06-01',100,'inter_17 unic_internet xPON'),
     (2,'2020-06-01',500,'iptv_08 TV FTTx');
INSERT INTO project.accruals (user_id,date_period,accruals_amount,accruals_name) VALUES
     (3,'2020-06-01',500,'iptv_09 TV xDSL'),
     (1,'2020-06-01',500,'iptv_01 TV xPON'),
     (20,'2020-06-01',500,'iptv_02 TV xPON'),
     (21,'2020-06-01',500,'iptv_03 TV xPON'),
     (22,'2020-06-01',500,'iptv_04 TV xPON'),
     (23,'2020-06-01',500,'iptv_05 TV xPON'),
     (24,'2020-06-01',500,'iptv_06 TV xPON'),
     (25,'2020-06-01',500,'iptv_07 TV xPON'),
     (25,'2020-06-01',500,'iptv_10 TV xPON'),
     (25,'2020-06-01',500,'iptv_11 TV xPON');
 
 
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('1', '4', 210, '2020-09-26 13:01:35');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('2', '15', 94, '2020-07-25 11:09:02');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('3', '24', 667, '2020-03-26 06:44:34');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('4', '25', 198, '2020-12-13 16:57:04');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('5', '23', 435, '2020-11-10 04:47:07');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('6', '11', 26, '2021-01-18 20:26:01');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('7', '18', 122, '2020-06-10 11:51:59');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('8', '16', 395, '2020-12-28 10:55:44');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('9', '19', 484, '2020-02-25 04:21:59');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('10', '8', 168, '2020-11-15 17:31:17');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('11', '11', 451, '2020-03-07 14:29:38');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('12', '25', 281, '2020-08-14 06:40:33');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('13', '7', 118, '2020-05-10 10:26:40');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('14', '23', 605, '2020-12-07 09:17:26');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('15', '25', 362, '2021-01-14 11:19:40');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('16', '23', 608, '2020-07-05 19:19:20');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('17', '8', 53, '2020-02-10 08:23:57');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('18', '14', 690, '2020-09-30 01:08:28');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('19', '7', 630, '2020-04-22 20:16:02');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('20', '6', 238, '2020-04-15 02:46:39');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('21', '4', 38, '2020-06-01 06:57:21');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('22', '22', 410, '2020-09-06 13:43:58');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('23', '11', 735, '2020-10-18 02:53:08');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('24', '8', 724, '2020-10-31 13:59:45');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('25', '5', 964, '2021-01-11 18:38:07');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('26', '24', 913, '2020-09-28 13:08:32');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('27', '10', 49, '2020-05-03 07:09:19');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('28', '7', 686, '2020-05-25 06:53:33');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('29', '21', 738, '2020-07-31 14:44:41');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('30', '20', 3, '2020-06-04 04:06:16');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('31', '2', 632, '2020-06-23 06:19:56');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('32', '24', 495, '2020-05-23 03:34:46');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('33', '4', 667, '2020-11-14 07:46:02');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('34', '17', 845, '2020-05-14 04:25:57');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('35', '1', 236, '2020-02-11 23:43:39');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('36', '19', 752, '2020-06-07 21:07:19');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('37', '6', 93, '2020-12-30 06:40:40');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('38', '13', 842, '2020-10-08 22:38:11');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('39', '23', 570, '2020-07-01 18:16:45');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('40', '17', 538, '2020-11-24 19:13:39');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('41', '3', 289, '2020-02-07 11:03:46');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('42', '6', 215, '2020-12-13 10:16:37');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('43', '10', 829, '2020-07-23 02:01:56');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('44', '10', 454, '2020-06-27 10:53:21');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('45', '11', 893, '2020-10-14 22:08:27');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('46', '8', 594, '2020-04-12 15:22:00');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('47', '20', 864, '2020-12-06 01:18:14');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('48', '22', 99, '2020-03-18 09:40:53');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('49', '19', 822, '2020-05-05 22:52:15');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('50', '19', 736, '2020-03-23 16:29:51');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('51', '14', 499, '2020-12-23 17:14:48');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('52', '1', 693, '2020-11-17 23:29:57');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('53', '24', 226, '2020-09-29 12:32:21');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('54', '13', 352, '2020-09-11 21:46:03');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('55', '16', 299, '2020-02-25 02:09:59');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('56', '12', 13, '2020-08-11 01:14:14');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('57', '2', 856, '2020-12-26 10:48:14');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('58', '25', 942, '2020-07-23 16:33:33');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('59', '8', 228, '2020-12-11 00:15:30');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('60', '17', 927, '2020-06-17 01:59:05');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('61', '25', 418, '2020-07-28 20:03:55');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('62', '19', 839, '2020-04-06 09:22:57');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('63', '21', 639, '2020-11-24 17:13:57');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('64', '17', 310, '2020-02-11 03:28:04');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('65', '3', 980, '2020-11-28 03:03:30');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('66', '19', 388, '2020-06-21 09:29:03');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('67', '25', 972, '2020-06-23 12:01:09');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('68', '2', 868, '2020-03-25 15:49:07');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('69', '2', 539, '2020-08-03 18:59:20');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('70', '20', 635, '2020-09-13 00:36:34');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('71', '9', 885, '2020-03-29 12:14:50');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('72', '13', 557, '2020-06-18 16:02:34');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('73', '24', 868, '2020-02-06 16:57:51');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('74', '18', 749, '2020-05-25 22:13:31');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('75', '1', 337, '2020-11-13 00:47:02');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('76', '7', 629, '2020-08-31 00:12:38');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('77', '9', 872, '2020-11-26 10:09:35');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('78', '7', 609, '2020-05-21 23:00:28');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('79', '23', 904, '2020-08-08 17:08:38');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('80', '22', 102, '2020-03-16 07:19:05');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('81', '2', 102, '2020-06-25 07:34:55');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('82', '17', 402, '2020-07-05 02:38:41');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('83', '6', 788, '2020-06-07 23:11:49');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('84', '23', 489, '2020-12-18 05:03:21');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('85', '17', 500, '2020-07-15 06:10:06');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('86', '1', 388, '2020-07-31 01:49:48');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('87', '13', 557, '2020-12-22 06:59:11');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('88', '9', 10, '2020-05-14 12:49:15');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('89', '7', 48, '2020-11-14 13:06:39');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('90', '9', 814, '2020-09-23 03:21:34');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('91', '8', 323, '2020-09-26 11:30:51');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('92', '13', 389, '2020-05-06 19:57:46');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('93', '25', 930, '2020-09-07 09:16:47');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('94', '12', 494, '2020-07-14 20:46:25');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('95', '19', 792, '2020-09-19 06:12:41');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('96', '21', 191, '2020-07-11 16:06:27');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('97', '7', 567, '2021-01-22 00:02:24');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('98', '25', 114, '2020-04-15 20:15:07');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('99', '18', 225, '2020-11-08 23:56:01');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('100', '22', 568, '2020-10-08 14:44:09');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('101', '8', 140, '2020-04-03 01:47:34');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('102', '1', 835, '2020-07-18 07:04:12');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('103', '20', 456, '2020-03-15 19:09:56');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('104', '2', 761, '2020-05-11 05:38:40');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('105', '24', 433, '2020-12-03 18:52:35');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('106', '16', 619, '2020-11-11 10:24:39');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('107', '20', 500, '2020-06-24 08:55:36');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('108', '10', 923, '2020-10-10 13:58:38');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('109', '3', 595, '2020-09-13 02:28:29');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('110', '1', 394, '2020-07-02 19:32:05');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('111', '21', 232, '2020-11-10 21:31:24');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('112', '5', 532, '2020-04-18 22:50:43');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('113', '19', 765, '2020-03-23 01:04:41');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('114', '1', 635, '2020-09-24 11:33:00');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('115', '2', 387, '2020-12-18 19:42:23');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('116', '19', 444, '2020-03-29 02:15:47');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('117', '14', 289, '2020-04-23 11:40:22');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('118', '3', 985, '2020-11-28 00:32:10');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('119', '10', 338, '2020-08-10 18:58:33');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('120', '14', 780, '2021-01-09 12:47:52');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('121', '7', 209, '2020-12-03 08:14:55');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('122', '11', 813, '2020-03-01 15:02:54');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('123', '21', 489, '2020-04-20 17:03:31');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('124', '15', 136, '2020-11-29 13:35:54');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('125', '12', 454, '2020-03-21 16:51:20');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('126', '14', 765, '2020-10-10 01:11:50');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('127', '20', 419, '2020-02-20 01:12:51');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('128', '9', 338, '2020-08-13 08:02:10');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('129', '21', 256, '2020-11-07 13:01:35');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('130', '25', 773, '2020-07-24 07:08:53');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('131', '23', 782, '2020-11-23 01:09:06');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('132', '24', 913, '2020-06-09 21:02:46');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('133', '15', 774, '2021-01-19 03:09:36');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('134', '1', 862, '2020-07-05 20:12:19');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('135', '17', 826, '2020-09-30 03:42:10');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('136', '8', 137, '2020-02-20 07:57:51');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('137', '25', 157, '2020-09-14 20:32:23');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('138', '16', 330, '2020-04-21 11:49:39');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('139', '21', 836, '2020-05-27 05:43:58');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('140', '14', 276, '2020-11-18 01:17:10');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('141', '25', 316, '2020-04-08 13:26:38');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('142', '25', 445, '2020-06-01 16:34:18');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('143', '9', 127, '2020-05-18 02:58:24');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('144', '13', 957, '2020-03-01 13:06:20');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('145', '5', 390, '2020-11-04 01:30:44');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('146', '9', 846, '2020-09-13 08:02:55');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('147', '4', 721, '2020-10-04 18:15:45');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('148', '19', 676, '2020-09-11 14:19:42');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('149', '9', 886, '2020-09-23 12:47:32');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('150', '5', 680, '2020-10-01 11:52:22');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('151', '20', 544, '2021-01-08 03:12:22');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('152', '15', 576, '2020-07-23 09:52:09');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('153', '25', 733, '2020-05-15 16:57:46');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('154', '16', 831, '2020-05-12 19:42:35');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('155', '12', 714, '2020-12-29 04:53:20');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('156', '7', 446, '2020-10-23 18:23:40');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('157', '3', 696, '2020-02-16 15:45:10');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('158', '16', 613, '2020-06-30 18:28:27');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('159', '3', 86, '2020-12-31 19:48:59');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('160', '13', 527, '2020-04-11 06:23:57');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('161', '6', 947, '2020-07-10 11:42:24');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('162', '8', 108, '2020-08-29 16:42:05');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('163', '3', 194, '2020-03-20 16:41:26');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('164', '23', 780, '2020-09-14 23:02:48');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('165', '1', 209, '2020-07-03 21:15:03');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('166', '13', 920, '2020-06-01 00:39:46');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('167', '8', 566, '2020-12-10 12:47:13');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('168', '22', 256, '2020-12-29 13:38:19');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('169', '14', 347, '2020-03-10 15:59:35');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('170', '22', 580, '2020-05-13 20:44:07');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('171', '10', 448, '2020-11-22 08:53:53');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('172', '10', 564, '2021-01-22 10:43:41');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('173', '2', 653, '2020-04-17 20:55:44');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('174', '24', 881, '2020-08-30 22:28:43');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('175', '9', 713, '2020-09-30 21:35:42');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('176', '9', 756, '2021-01-13 00:28:35');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('177', '17', 128, '2020-04-19 15:01:55');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('178', '12', 716, '2020-05-23 11:15:09');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('179', '6', 778, '2020-04-03 09:07:40');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('180', '8', 267, '2020-02-10 08:53:12');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('181', '6', 195, '2020-11-07 19:26:17');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('182', '3', 715, '2020-10-03 04:12:56');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('183', '19', 22, '2020-06-18 22:03:29');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('184', '1', 780, '2021-01-08 03:47:03');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('185', '6', 348, '2020-03-05 16:34:27');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('186', '11', 475, '2020-05-16 15:09:50');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('187', '17', 367, '2020-11-04 08:49:49');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('188', '22', 272, '2020-08-03 11:40:08');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('189', '14', 860, '2020-05-13 17:01:49');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('190', '1', 950, '2020-11-22 06:05:12');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('191', '24', 119, '2021-01-07 16:04:55');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('192', '15', 898, '2020-06-09 13:45:21');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('193', '12', 754, '2021-01-29 18:23:29');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('194', '24', 808, '2020-05-13 04:56:24');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('195', '9', 118, '2020-08-08 02:19:24');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('196', '10', 124, '2020-03-09 02:41:53');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('197', '2', 181, '2020-10-26 15:44:13');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('198', '24', 102, '2020-12-25 08:30:25');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('199', '4', 167, '2020-03-13 17:24:52');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('200', '14', 977, '2020-03-24 23:29:51');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('201', '18', 616, '2020-03-13 22:25:56');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('202', '4', 645, '2020-12-03 22:28:11');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('203', '7', 521, '2020-03-11 00:41:05');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('204', '20', 858, '2020-08-28 13:05:58');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('205', '6', 610, '2020-12-28 19:08:37');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('206', '10', 277, '2021-01-28 23:09:57');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('207', '3', 327, '2020-05-14 16:25:17');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('208', '25', 444, '2020-04-16 15:02:45');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('209', '16', 986, '2020-11-24 07:09:51');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('210', '13', 783, '2020-03-01 03:56:04');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('211', '5', 460, '2020-06-15 22:13:18');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('212', '10', 203, '2020-03-18 15:56:45');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('213', '16', 773, '2020-04-25 10:29:19');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('214', '8', 8, '2020-03-15 00:16:58');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('215', '4', 327, '2020-07-23 04:35:23');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('216', '6', 595, '2020-08-18 07:56:28');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('217', '9', 288, '2020-03-15 00:17:30');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('218', '7', 505, '2020-04-11 09:52:26');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('219', '8', 415, '2021-01-07 07:23:03');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('220', '18', 741, '2020-06-15 21:17:44');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('221', '18', 557, '2020-04-22 19:54:12');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('222', '13', 840, '2020-06-15 19:02:31');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('223', '13', 726, '2020-09-07 10:01:06');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('224', '9', 918, '2020-03-02 10:07:31');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('225', '21', 234, '2020-08-27 11:09:07');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('226', '7', 690, '2020-08-16 00:02:09');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('227', '23', 962, '2020-12-17 17:24:59');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('228', '6', 206, '2020-09-20 15:03:35');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('229', '25', 928, '2020-10-05 12:56:27');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('230', '11', 494, '2020-09-18 07:07:55');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('231', '23', 285, '2020-03-25 06:32:41');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('232', '23', 175, '2020-07-05 02:06:05');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('233', '14', 890, '2020-07-10 09:07:51');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('234', '24', 694, '2020-08-17 19:07:15');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('235', '12', 819, '2020-02-24 15:02:17');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('236', '7', 345, '2020-11-11 15:57:42');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('237', '10', 39, '2020-12-07 00:11:14');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('238', '13', 208, '2020-08-30 17:52:31');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('239', '12', 843, '2020-06-01 13:43:54');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('240', '25', 464, '2020-05-09 19:05:13');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('241', '11', 576, '2020-07-01 23:26:16');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('242', '24', 493, '2020-06-27 17:11:11');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('243', '2', 532, '2021-01-07 07:38:14');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('244', '13', 542, '2020-10-26 11:03:51');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('245', '25', 621, '2020-10-31 18:23:22');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('246', '22', 588, '2020-09-02 09:30:10');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('247', '16', 291, '2020-04-02 15:17:43');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('248', '23', 110, '2020-05-29 18:42:00');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('249', '14', 909, '2020-07-29 23:53:58');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('250', '16', 516, '2020-08-04 01:40:52');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('251', '6', 294, '2020-04-02 22:52:05');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('252', '1', 330, '2020-03-29 08:13:24');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('253', '17', 870, '2020-10-16 23:24:28');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('254', '24', 677, '2020-08-16 02:40:38');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('255', '10', 774, '2020-11-19 06:20:42');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('256', '22', 571, '2020-08-07 18:01:07');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('257', '18', 789, '2020-12-20 09:13:31');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('258', '14', 918, '2020-02-17 04:45:16');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('259', '8', 653, '2020-05-30 09:48:57');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('260', '19', 607, '2020-04-21 06:33:28');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('261', '2', 123, '2020-05-01 10:25:14');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('262', '3', 2, '2020-06-22 14:28:51');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('263', '11', 964, '2020-09-12 09:55:13');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('264', '16', 979, '2020-02-02 00:54:29');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('265', '15', 983, '2020-05-25 08:04:42');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('266', '1', 568, '2020-12-01 21:00:12');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('267', '12', 449, '2020-12-05 23:04:32');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('268', '21', 234, '2020-12-19 07:51:31');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('269', '7', 571, '2020-08-08 04:18:22');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('270', '17', 238, '2020-05-03 18:24:52');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('271', '5', 363, '2020-11-20 16:29:04');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('272', '21', 407, '2020-08-19 19:27:54');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('273', '16', 534, '2020-11-07 06:36:55');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('274', '7', 213, '2021-01-06 22:19:46');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('275', '15', 681, '2020-09-23 21:43:47');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('276', '9', 885, '2020-03-05 14:06:37');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('277', '8', 895, '2020-12-19 22:55:31');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('278', '16', 757, '2020-09-13 15:55:50');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('279', '17', 652, '2020-12-05 05:25:23');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('280', '10', 787, '2020-03-12 12:51:22');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('281', '15', 762, '2020-09-17 04:05:10');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('282', '3', 834, '2020-04-03 12:13:07');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('283', '22', 483, '2020-09-11 01:12:37');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('284', '3', 740, '2021-01-26 17:55:22');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('285', '6', 125, '2020-03-13 19:58:02');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('286', '15', 135, '2020-04-08 12:06:32');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('287', '24', 942, '2020-04-21 18:43:10');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('288', '19', 255, '2020-11-22 18:21:56');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('289', '2', 837, '2020-11-29 20:20:41');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('290', '7', 903, '2020-05-09 04:37:04');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('291', '6', 64, '2020-05-18 18:33:37');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('292', '12', 860, '2020-11-25 04:13:37');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('293', '3', 118, '2020-04-17 06:18:44');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('294', '14', 627, '2020-08-26 12:41:36');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('295', '3', 576, '2020-11-05 14:57:10');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('296', '5', 619, '2020-10-18 09:29:45');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('297', '25', 658, '2020-08-31 22:13:00');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('298', '2', 728, '2020-03-23 22:45:32');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('299', '19', 630, '2020-09-30 13:52:01');
INSERT INTO `payment_history` (`id`, `user_id`, `payment`, `created_at`) VALUES ('300', '10', 315, '2020-10-13 19:01:43');

