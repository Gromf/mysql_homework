/*В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. 
 * 
 *Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции. */

-- создаю 2 базы и тестовые данные

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

-- транзакция

START TRANSACTION;
    INSERT INTO sample.users (SELECT * FROM shop.users WHERE id = 1);
    DELETE FROM shop.users WHERE id = 1;
COMMIT;

SELECT * FROM shop.users;
SELECT * FROM sample.users;

/* Создайте представление, которое выводит название name товарной позиции 
 * из таблицы products и соответствующее название каталога name из таблицы catalogs.*/ 

-- создаю представление 

CREATE VIEW prod_name (prod_name, cat_name) AS 
    SELECT products.name, catalogs.name FROM 
        products        
        JOIN catalogs
        ON products.id = catalogs.id;
    
SELECT * FROM prod_name;

/*Пусть имеется таблица с календарным полем created_at. 
 * В ней размещены разряженые календарные записи за август 2018 года 
 * '2018-08-01', '2018-08-04', '2018-08-16' и 2018-08-17. 
 * Составьте запрос, который выводит полный список дат за август, выставляя в 
 * соседнем поле значение 1, если дата присутствует в исходном таблице и 0, 
 * если она отсутствует. */

-- создаю таблицу

CREATE TABLE test_table (
id SERIAL,
name VARCHAR (255),
created_at date
)


-- тестовые данные
INSERT INTO test_table (name, created_at) VALUES 
('строка 1', '2018-08-01'),
('строка 2', '2018-08-04'),
('строка 3', '2018-08-16'),
('строка 4', '2018-08-17');

-- создаю временную таблицу с днями августа
CREATE TEMPORARY TABLE august_date (days INT);

INSERT INTO august_date (days) VALUES 
(1), (2), (3), (4), (5), (6), (7), (8), (9), (10),
(11), (12), (13), (14), (15), (16), (17), (18), (19), (20),
(21), (22), (23), (24), (25), (26), (27), (28), (29), (30), (31);


-- создаю запрос в котором через left join получаю NULL который через IF превращаю в 1 или 0
-- т.к. условия идут только под 1 месяц (август 2018 года), то я сильно упрощаю задачу делая запрос только под один месяц

SELECT date(concat('2018-08-', august_date.days)) AS aug_day, 
    IF (test_table.created_at IS NULL, 0, 1) AS target
        FROM august_date
        LEFT JOIN test_table
        ON august_date.days = DAYOFMONTH(test_table.created_at); 
        
    
/* Пусть имеется любая таблица с календарным полем created_at. Создайте запрос, 
 *который удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей. */
    
    
-- в данном у меня 2 варианта решения, аналогичный разобранному на уроке, но он оставляет более 5 записей, если дата 5-й и далее записей совпадают
-- второй вариант, я удаляю все кроме 5 записей

-- создаю тестовые данные
    
CREATE TABLE task_3 (
id SERIAL,
name VARCHAR (255),
created_at date
);

INSERT INTO task_3 (name, created_at) VALUES 
('строка 1', '2018-08-01'),
('строка 2', '2018-05-04'),
('строка 3', '2018-08-16'),
('строка 4', '2018-07-17'),
('строка 5', '2018-08-21'),
('строка 6', '2018-08-04'),
('строка 7', '2018-05-16'),
('строка 8', '2018-08-17'),
('строка 9', '2018-08-01'),
('строка 10', '2018-08-04'),
('строка 11', '2015-08-16'),
('строка 12', '2013-08-17'),
('строка 13', '2020-08-01'),
('строка 14', '2018-08-04'),
('строка 15', '2018-04-16'),
('строка 16', '2017-08-31'),
('строка 17', '2018-08-04'),
('строка 18', '2018-08-16'),
('строка 19', '2019-08-17');

-- вариант 1

DELETE task_3 FROM task_3 
    JOIN 
        (SELECT created_at FROM task_3 ORDER BY created_at DESC LIMIT 4, 1 
        ) AS last_date
    ON task_3.created_at < last_date.created_at;
    
-- вариант 2

DELETE task_3 FROM task_3 
    LEFT JOIN
        (SELECT id FROM task_3 ORDER BY created_at DESC LIMIT 5) AS limits
    ON limits.id = task_3.id
    WHERE limits.id IS NULL;

-- проверяем результат
SELECT * FROM task_3 ORDER BY created_at DESC;


/*Создайте хранимую функцию hello(), которая будет возвращать приветствие, 
 * в зависимости от текущего времени суток. С 6:00 до 12:00 функция должна 
 * возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать 
 * фразу "Добрый день", с 18:00 до 00:00 — "Добрый вечер", 
 * с 00:00 до 6:00 — "Доброй ночи". */

DELIMITER //

CREATE FUNCTION hello ()
RETURNS VARCHAR(20) NO SQL
BEGIN
    DECLARE t TINYINT;
    SET t = HOUR(NOW()); 
    CASE     
        WHEN t BETWEEN 6 AND 11 THEN
           RETURN "Доброе утро";
        WHEN t BETWEEN 12 AND 17 THEN
           RETURN "Добрый день";
        WHEN t BETWEEN 18 AND 23 THEN
          RETURN "Добрый вечер";
        WHEN t BETWEEN 0 AND 5 THEN
          RETURN "Доброй ночи";
    END CASE;
END//

DELIMITER ;

/* В таблице products есть два текстовых поля: name с названием товара и description с его описанием.
 * Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема.
 *  Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. При попытке присвоить полям NULL-значение необходимо отменить операцию.*/




DELIMITER //

CREATE TRIGGER check_name_description_insert BEFORE INSERT ON products
FOR EACH ROW
BEGIN
    IF NEW.name IS NULL AND NEW.description IS NULL THEN 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Запрещено вставлять NULL в поля name и description';   
    END IF;
END//

DELIMITER ;


/* (по желанию) Напишите хранимую функцию для вычисления произвольного числа Фибоначчи. 
 *Числами Фибоначчи называется последовательность в которой число равно сумме двух предыдущих чисел. 
 *Вызов функции FIBONACCI(10) должен возвращать число 55.*/

-- реализация через цикл

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