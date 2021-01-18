
--  Определить кто больше поставил лайков (всего) - мужчины или женщины?

-- выводим оба пола

SELECT gender, count(gender) AS amount 
    FROM likes
        LEFT JOIN profiles
        ON profiles.user_id = likes.user_id
        GROUP BY gender; 

-- выводим только максимальный

SELECT gender, count(gender) AS amount 
    FROM likes
        LEFT JOIN profiles
        ON profiles.user_id = likes.user_id
        GROUP BY gender ORDER BY amount DESC LIMIT 1; 

    
-- Подсчитать общее количество лайков десяти самым молодым пользователям (сколько лайков получили 10 самых молодых пользователей).

-- в данном случае я использую вложенный запрос для получения суммы по столбцу
    
SELECT sum(amount) AS total_likes FROM 
    (SELECT profiles.user_id, likes.target_id, profiles.birthday, count(likes.target_type_id) AS amount FROM profiles
        LEFT JOIN likes 
        ON likes.target_id = profiles.user_id AND likes.target_type_id = 2
        GROUP BY user_id ORDER BY profiles.birthday DESC LIMIT 10) AS total;
        
    
-- Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети

-- активность считаю, как сумму активности деленную на время пользования сетью в днях
    
SELECT users.id, concat(users.first_name, ' ', users.last_name) AS name,
    users.created_at AS reg_date,
    (count(mes_from.from_user_id) + count(mes_to.to_user_id) + count(posts.user_id) + count(media.user_id) + count(likes.user_id)) / TIMESTAMPDIFF(day, users.created_at, now()) AS activity 
    FROM users
        LEFT JOIN messages AS mes_from
        ON users.id = mes_from.from_user_id
            LEFT JOIN messages AS mes_to
            ON users.id = mes_to.to_user_id
                LEFT JOIN posts
                ON users.id = posts.user_id
                    LEFT JOIN media
                    ON users.id = media.user_id
                        LEFT JOIN likes
                        ON users.id = likes.user_id 
                        GROUP BY name ORDER BY activity, id LIMIT 10;
                        
                    