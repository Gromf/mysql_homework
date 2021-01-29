-- Индексы

-- пример с урока
CREATE INDEX messages_from_user_id_to_user_id_idx ON messages (from_user_id, to_user_id);

-- уверен в эффективности этого индекса, думал об обратном target_tyre_id, target_id, но думаю он менее эффективный
CREATE INDEX likes_target_id_target_type_id_idx ON likes (target_id, target_type_id);

/* менее уверен в целесообразности этих индексов, фактически он будет использоваться только при поиске людей пользователем, т.е. относительно редкий запрос
 * с другой стороны этим точно будут пользоваться, а поиск в неотсортированном списке текста может занимать много времени
 * я создаю 2 отельных индекса, т.к. пользователь может искать по любому из полей, а не обязательно по  имя + фамилия */
CREATE INDEX users_first_name_idx ON users (first_name);
CREATE INDEX users_last_name_idx ON users (last_name);

-- аналог индекса по фио, но для для сообществ, полезность более сомнительна, т.к. обращаться к нему скорее будут еще реже
CREATE INDEX communities_name_idx ON communities (name);

/* для таблицы профилей не вижу смысла создавать индекс, множество неуникальных значений, запросы к городу/стране еще реже других
 * Была идея индекса по дате создания постов, но не уверен в эффективности, по идее есть id поста и он коррелирует с датой создания */

-- реализовал запрос на оконные функции 2-я способами
-- реализация через вложенные запросы в JOIN

SELECT DISTINCT communities.name AS community_name, 
    comm_count.communities_nuber AS communities_number,
    COUNT(communities_users.community_id) OVER () / comm_count.communities_nuber AS avg_user,
    MAX(profiles.birthday) OVER def AS oldest_user,
    MIN(profiles.birthday) OVER def AS youngest_user,
    COUNT(profiles.user_id) OVER def AS users_in_communities,
    user_counts.user_count AS users_in_system,
    COUNT(profiles.user_id) OVER def / user_counts.user_count * 100 AS users_in_com_from_all
        FROM communities
        LEFT JOIN communities_users
        ON communities.id = communities_users.community_id
        LEFT JOIN profiles
        ON communities_users.user_id = profiles.user_id
        LEFT JOIN (SELECT COUNT(communities.id) AS communities_nuber FROM communities) AS comm_count
        ON communities.id = communities.id
        LEFT JOIN (SELECT COUNT(profiles.user_id) user_count FROM profiles) AS user_counts
        ON profiles.user_id = communities_users.user_id
        WINDOW def AS (PARTITION BY communities.id)
        ORDER BY communities.name;
    
    
-- реализация через вложенные запросы в SELECT

    SELECT DISTINCT communities.name AS community_name, 
    (SELECT COUNT(communities.id) FROM communities) AS communities_number,
    COUNT(communities_users.community_id) OVER () / (SELECT COUNT(communities.id) FROM communities) AS avg_user,
    MAX(profiles.birthday) OVER def AS oldest_user,
    MIN(profiles.birthday) OVER def AS youngest_user,
    COUNT(profiles.user_id) OVER def AS users_in_communities,
    (SELECT COUNT(profiles.user_id) FROM profiles) AS users_in_system,
    COUNT(profiles.user_id) OVER def / (SELECT COUNT(profiles.user_id) FROM profiles) * 100 AS users_in_com_from_all
        FROM communities
        LEFT JOIN communities_users
        ON communities.id = communities_users.community_id
        LEFT JOIN profiles
        ON communities_users.user_id = profiles.user_id
        WINDOW def AS (PARTITION BY communities.id)
        ORDER BY communities.name;