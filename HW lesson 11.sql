/*Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, catalogs и products в таблицу logs 
 * 
 *помещается время и дата создания записи, название таблицы, идентификатор первичного ключа и содержимое поля name. */

DROP TABLE logs;

CREATE TABLE logs (
id SERIAL, 
table_name VARCHAR(50),
table_id INT,
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
name varchar(255)
) ENGINE = archive;

DROP TRIGGER IF EXISTS users_to_logs;
DROP TRIGGER IF EXISTS catalogs_to_logs;
DROP TRIGGER IF EXISTS products_to_logs;

DELIMITER // 

CREATE TRIGGER users_to_logs AFTER INSERT ON users
    FOR EACH ROW BEGIN 
        INSERT INTO logs (table_name, table_id, name) VALUES
        ('users', NEW.id, NEW.name);
    END//

CREATE TRIGGER catalogs_to_logs AFTER INSERT ON catalogs
    FOR EACH ROW BEGIN 
        INSERT INTO logs (table_name, table_id, name) VALUES
        ('catalogs', NEW.id, NEW.name);
    END//

CREATE TRIGGER products_to_logs AFTER INSERT ON products
    FOR EACH ROW BEGIN 
        INSERT INTO logs (table_name, table_id, name) VALUES
        ('products', NEW.id, NEW.name);
    END//
    
    
DELIMITER ;


/* (по желанию) Создайте SQL-запрос, который помещает в таблицу users миллион записей.*/ 

-- т.к. изящное решение с разбора не интересно, то реализую через процедуру, но с созданием любого количества записей

DROP TABLE IF EXISTS samples;

CREATE TABLE samples (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

INSERT INTO samples (name, birthday_at) VALUES
  ('Геннадий', '1990-10-05'),
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-20'),
  ('Сергей', '1988-02-14'),
  ('Иван', '1998-01-12'),
  ('Мария', '1992-08-29'),
  ('Аркадий', '1994-03-17'),
  ('Ольга', '1981-07-10'),
  ('Владимир', '1988-06-12'),
  ('Екатерина', '1992-09-20');

DROP PROCEDURE IF EXISTS row_generator;

DELIMITER // 



CREATE PROCEDURE row_generator (IN num INT)
    BEGIN 
        DECLARE counts int DEFAULT 0;
        DECLARE now_count int DEFAULT 0;
        DROP TABLE IF EXISTS temp_table;
        CREATE TABLE temp_table(
            name VARCHAR(255),
            birthday_at DATE
            );
        INSERT INTO temp_table (name, birthday_at) SELECT name, birthday_at FROM samples;
            SELECT COUNT(*) INTO counts FROM temp_table;
        IF counts < num THEN   
            WHILE counts < num DO 
                INSERT INTO temp_table (name, birthday_at) SELECT name, birthday_at FROM temp_table;
                SELECT COUNT(*) INTO counts FROM temp_table;
            END WHILE;
            SELECT COUNT(*) INTO now_count FROM samples;
            SET now_count = num - now_count;
            INSERT INTO samples (name, birthday_at) SELECT name, birthday_at FROM temp_table LIMIT now_count;
        END IF;
        DROP TABLE temp_table;
    END//


DELIMITER ;

CALL row_generator(1000);
SELECT count(*) FROM samples;
