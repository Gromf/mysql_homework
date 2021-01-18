
--  Определить кто больше поставил лайков (всего) - мужчины или женщины?

-- выводим оба пола
select (select gender from profiles where profiles.user_id = likes.user_id) as gender, count(user_id) as amount from likes group by gender;

-- выводим только максимальный

select (select gender from profiles where profiles.user_id = likes.user_id) as gender, count(user_id) as amount from likes group by gender order by amount desc limit 1;


-- Подсчитать общее количество лайков десяти самым молодым пользователям (сколько лайков получили 10 самых молодых пользователей).

select  
(select concat(first_name, ' ', last_name) from users where users.id = profiles.user_id) as name,
birthday,
(select count(likes.user_id) from likes where likes.user_id = profiles.user_id and target_type_id = 2) as likes_num 
from profiles order by birthday desc limit 10;




-- Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети

-- у меня не получилось получить через 1 запрос, я использую временную таблицу в которую собираю всю активность пользователей
-- активность считаю, как всю активность (лайки, сообщения и т д) / время пользования соцсетью (дата создания пользователя - текущая дата, временем создания пренебрегаю)


-- создаю временную таблицу
create temporary table sum_temps (
user_id int
);

-- помещаю в нее все данные по активности пользователей - постановка лайков, сообщения (полученные/отправленные), создание постов, размещение медиа-файлов

insert into sum_temps (
(select user_id from likes)
union all
(select from_user_id from messages)
union all
(select to_user_id from messages)
union all
(select user_id from posts)
union all
(select user_id from media));


-- извлекаю данные из таблицы + получаю итоговые данные

select user_id,
(select concat(first_name, ' ', last_name) from users where users.id = sum_temps.user_id) as name,
(select created_at from users where users.id = sum_temps.user_id) as reg_date,
count(user_id) / (select TIMESTAMPDIFF(day, created_at, now()) from users where sum_temps.user_id = users.id) as activity 
from sum_temps group by user_id order by activity limit 10;