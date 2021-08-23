DROP DATABASE IF EXISTS Prog_tech;
CREATE DATABASE Prog_tech;
USE Prog_tech;


DROP TABLE IF EXISTS rubrics;
CREATE TABLE rubrics (
	id SERIAL PRIMARY KEY,
	rubric VARCHAR(200) UNIQUE NOT NULL
) comment 'Рубрики на разный вкус';

DROP TABLE IF EXISTS media;
CREATE TABLE media (
	id SERIAL PRIMARY KEY,
	filename VARCHAR(200) NOT NULL,
	`path` VARCHAR(200) NOT null,
	`type` text not null
) comment 'Мультимедиа, которые будут использователься для визуализации статей';


DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    firstname VARCHAR(25),
    lastname VARCHAR(10), 
    email VARCHAR(120) UNIQUE,
 	password_hash VARCHAR(100),
	phone BIGINT UNSIGNED unique,
	creators_id BIGINT unique default null,
	rating_comments_id bigint unique default null,
	user_profiles_id bigint unique
) COMMENT 'Пользователи сервиса';


DROP TABLE IF EXISTS user_profiles;
CREATE TABLE user_profiles (
	id SERIAL PRIMARY KEY,
	user_id BIGINT UNSIGNED,
	created_at TIMESTAMP DEFAULT now(),
	first_name VARCHAR(100) DEFAULT ' ',
	last_name VARCHAR(100) DEFAULT ' ',
	gender ENUM ('m', 'f'),
	date_of_birth DATE,
	country_id BIGINT UNSIGNED,
	about VARCHAR(350) DEFAULT ' ',
	INDEX user_name_idx (first_name, last_name),
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE
) COMMENT 'Профили пользователей';

	
DROP TABLE IF EXISTS creators;
CREATE TABLE creators (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(200),
	last_name VARCHAR(200),
	date_of_birth DATE,
	date_of_death DATE DEFAULT NULL,
	gender ENUM ('m', 'f'),
	photo BIGINT unsigned,
	article_id BIGINT unique,
	`user_id` BIGINT unsigned
) Comment 'Создатели статей';

ALTER TABLE creators
	ADD CONSTRAINT creators_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
	  ON DELETE cascade;



DROP TABLE IF EXISTS articles;
CREATE TABLE articles (
	id SERIAL PRIMARY KEY,
	rubric_of_article BIGINT UNSIGNED,
	title VARCHAR(100) NOT NULL,
	`describe` VARCHAR(100) DEFAULT ' ',
	`text` text,
	num_of_comments BIGINT unsigned,
	id_of_creator BIGINT unsigned,
	media_type VARCHAR(200) NOT null,

	index article_ind (title),	
	
	FOREIGN KEY (id_of_creator) REFERENCES users(id)
		ON DELETE cascade
		on update cascade,
	FOREIGN KEY (rubric_of_article) REFERENCES rubrics(id)
		ON DELETE cascade
		on update cascade
		
		
) comment 'Статьи';


	 
DROP TABLE IF EXISTS favourite_articles;
CREATE TABLE favourite_articles (
	id SERIAL PRIMARY KEY,
	users_id BIGINT UNSIGNED,
	article_id BIGINT UNSIGNED NOT NULL,
	created_at TIMESTAMP DEFAULT now(),
	
	
	FOREIGN KEY (users_id) REFERENCES users(id)
		ON DELETE cascade,
	FOREIGN KEY (article_id) REFERENCES articles(id)
		ON DELETE cascade
		
) Comment 'Любимые статьи пользователей';

DROP TABLE IF EXISTS favourite_rubrics;
CREATE TABLE favourite_rubrics (
	id SERIAL PRIMARY KEY,
	users_id BIGINT UNSIGNED,
	rubric_id BIGINT UNSIGNED NOT NULL,
	created_at TIMESTAMP DEFAULT now(),
	updated_at TIMESTAMP DEFAULT now(),
	
	
	FOREIGN KEY (users_id) REFERENCES users(id)
		ON DELETE cascade,
	FOREIGN KEY (rubric_id) REFERENCES rubrics(id)
		ON DELETE cascade
		
) Comment 'Любимые рубрики пользователей';

DROP TABLE IF EXISTS votes_for_articles;
CREATE TABLE votes_for_articles (
	id SERIAL PRIMARY KEY,
	users_id BIGINT UNSIGNED,
	rubric_id BIGINT UNSIGNED NOT NULL,
	article_id BIGINT UNSIGNED NOT null,
	vote BIT,

	FOREIGN KEY (users_id) REFERENCES users(id)
		ON DELETE cascade,
	FOREIGN KEY (rubric_id) REFERENCES rubrics(id)
		ON DELETE cascade,
	FOREIGN KEY (article_id) REFERENCES articles(id)
		ON DELETE cascade
	
)Comment 'Голосование за рейтинг статьи';


DROP TABLE IF EXISTS comments;
CREATE TABLE comments (
	id SERIAL PRIMARY KEY,
	from_user BIGINT UNSIGNED,
	rubric_id BIGINT UNSIGNED,
	article_id BIGINT unsigned,
	created_at TIMESTAMP DEFAULT now(),
	body_text TEXT NOT null,
	
	
	FOREIGN KEY (article_id) REFERENCES articles(id)
		ON DELETE cascade,
	FOREIGN KEY (rubric_id) REFERENCES rubrics(id)
		ON DELETE cascade,
	FOREIGN KEY (from_user) REFERENCES users(id)
		ON DELETE cascade
		
) Comment 'Все комментарии статей';

drop table if exists rating_comments;
create table rating_comments (
	id SERIAL PRIMARY KEY,
	user_id BIGINT UNSIGNED,
	comments_count BIGINT unsigned,
	place bigint unsigned,
	
		FOREIGN KEY (user_id) REFERENCES users(id)
		ON DELETE cascade

) COMMENT 'Рейтинг комментаторов статей';
