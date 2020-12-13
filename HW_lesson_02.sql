create database if not exists example;
use example;

create table if not exists users (

id SERIAL,
name TEXT
);

-- вставляем тестовые значения
insert into users values
(null, 'Вася'),
(null, 'Петя'),
(null, 'Таня');

select * from users;

-- создаем новую базу в которую будем разворачивать дамп example
create database if not exists sample;

