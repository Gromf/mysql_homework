create table posts (
id int unsigned not null auto_increment primary key comment "Идентификатор строки",
source_id int unsigned not null comment "ссылка на создателя поста (пользователь или группа)",
source_type tinyint unsigned not null comment "тип создателя поста",
content text comment "контент постаста",
media_id int unsigned comment "ссылка на медиа контент",
created_at datetime default now() comment "Время создания строки",  
updated_at datetime default now() on update now() comment "Время обновления строки"
) comment "посты";

create table source_types (
id tinyint unsigned not null auto_increment primary key comment "Идентификатор строки",
name varchar(50) comment "название источника",
created_at datetime default now() comment "Время создания строки",  
updated_at datetime default now() on update now() comment "Время обновления строки"
) comment "типы источников постов";

create table likes (
user_id int unsigned not null comment "ссылка на пользователя",
post_id int unsigned not null comment "ссылка на пост",
deleted bool comment "флаг удаления лайка",
created_at datetime default now() comment "Время создания строки",  
updated_at datetime default now() on update now() comment "Время обновления строки",
primary key (user_id, post_id) comment "Составной первинчый ключ"
) comment "лайки";

insert into source_types(name) values 
('user'),
('communitie');

