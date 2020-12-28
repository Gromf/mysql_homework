/*Практическое задание по теме «Операторы, фильтрация, сортировка и ограничение»*/



-- создаем базу по домашнюю работу
create database homework5;
use homework5;

-- --------------------------------------

/* Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.*/

-- создаем таблицу под первую таблицу, вместо users использую task1

create table task1 (
id int unsigned not null auto_increment primary key,
created_at datetime,
updated_at datetime);

-- заполняем тестовыми данными по умолчанию

insert into task1 (created_at, updated_at) values 
(null, null),
(null, null),
(null, null);

-- проверяем, что данные соответствуют условию

select * from task1;

-- заполняем столбцы created_at и updated_at

update task1 set created_at = now(), updated_at = now();

-- проверяем, что все корректно

select * from task1;

-- --------------------------------------

/* Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR 
 * и в них долгое время помещались значения в формате 20.10.2017 8:10. 
 * Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения. */

-- создаем таблицу task2.

create table task2 (
id int unsigned not null auto_increment primary key,
name varchar(255),
created_at varchar(50),
updated_at varchar(50));

-- заполняем тестовыми данными
insert into task2 (name, created_at, updated_at) values 
('vasia', '20.10.2017 8:10', '20.10.2020 8:10'),
('kat', '20.11.2017 10:10', '20.10.2017 8:10'),
('abstract_name', '30.10.2015 8:10', '10.10.2010 18:10');

-- проверяем таблицу, что все корректно

select * from task2;
desc task2;

-- обновляем данные таблицы

-- приводим формат даты/времени к эталонному
update task2 set 
created_at = STR_TO_DATE(created_at,'%d.%m.%Y %H:%i'), 
updated_at = STR_TO_DATE(updated_at,'%d.%m.%Y %H:%i');

-- меняем тип столбцов
alter table task2 modify column created_at datetime;
alter table task2 modify column updated_at datetime;


-- проверяем
select * from task2;
desc task2;

-- --------------------------------------

/*В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 0, если товар закончился 
 * и выше нуля, если на складе имеются запасы. Необходимо отсортировать записи таким образом, чтобы они выводились в порядке 
 * увеличения значения value. Однако нулевые запасы должны выводиться в конце, после всех записей. */


-- создаем таблицу task3

create table task3 (
id INT unsigned not null auto_increment primary key,
name varchar(50),
counts int);

-- Заполняем тестовыми данными
insert into task3 (name, counts) values
('horses', 0),
('apples', 2500),
('cars', 0),
('carrots', 30),
('oranges', 500),
('pumples', 1);

-- выводим информацию с необходимо сортировкой. используется дополнительный столбец в котором при условии counts > 0 значение равно 0 и он поднимается вверх, для прочих 1. 
select * from task3 order by if (counts > 0, 0, 1), counts;

-- --------------------------------------

/* (по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. Месяцы заданы в виде списка английских названий (may, august)*/

-- создаем таблицу task4. не очень понятны условия, но будем считать, что я понял правильно и данные хранятся в виде названий месяцев.

create table task4(
id int unsigned not null auto_increment primary key,
name varchar(50),
birthday_at varchar(50));
)

-- заполняем тестовые данные
insert into task4 (name, birthday_at) values
('vasilia', '1 august 2005'),
('petia', '28 february 1987'),
('maria', '7 may 1977'),
('katie', '15 september 2001'),
('milfinia', '10 may 1999');


-- выводим требуемые данные через like и %
select * from task4 where birthday_at like '%may%' or birthday_at like '%august%';


-- --------------------------------------

/*(по желанию) Из таблицы catalogs извлекаются записи при помощи запроса. SELECT * FROM catalogs WHERE id IN (5, 1, 2); Отсортируйте записи в порядке, заданном в списке IN. */

-- создаем таблицу task5, я переиспользую структуру и данные из 3-й задачи

create table task5 (
id INT unsigned not null auto_increment primary key,
name varchar(50),
counts int);

-- Заполняем тестовыми данными
insert into task5 (name, counts) values
('horses', 0),
('apples', 2500),
('cars', 0),
('carrots', 30),
('oranges', 500),
('pumples', 1);

-- выводим данные в требуемом порядке через order by field()
select * from task5 where id in (5, 1, 2) order by field(id, 5, 1 , 2);


-- --------------------------------------

/*Практическое задание теме «Агрегация данных» */

/* Подсчитайте средний возраст пользователей в таблице users.*/


-- создаю тестовую таблицу task6
create table task6 (
id int unsigned not null auto_increment primary key,
name varchar(50),
birthday_at date);
)

-- добавляю тестовые данные
insert into task6 (name, birthday_at) values 
('vasilia', '2010-12-10'),
('petia', '1995-10-15'),
('maria', '1976-11-17'),
('katye', '2000-05-09'),
('milfinia', '1999-01-30');


-- получаю результат через среднее значение (avg от возраста)
select avg(TIMESTAMPDIFF(year, birthday_at, now())) as 'Средний возраст' from task6;

-- --------------------------------------

/*Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. Следует учесть, что необходимы дни недели текущего года, а не года рождения. */

-- переиспользую данные прошлой задачи
-- через dayname получаю значение дня недели, значение получаю извлекая год из текущей даты и день/месяц из даты рождения
select dayname(concat(year(now()),'-', month(birthday_at),'-', day(birthday_at))) as 'day name',
count(dayname(concat(year(now()),'-', month(birthday_at),'-', day(birthday_at)))) as 'day count'
from task6 
group by dayname(concat(year(now()),'-', month(birthday_at),'-', day(birthday_at))); 

-- --------------------------------------

/*(по желанию) Подсчитайте произведение чисел в столбце таблицы. */

-- формула вычисления через возведение экспоненты в степень суммы логарифмов честно нагуглена. Переиспользуется прошлая таблицы.
select exp(sum(ln(id))) as 'Произведение' from task6;

-- удаляем базу 
drop database homework5;
