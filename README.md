# META-BUSINESS-SUITE-2

CREATE DATABASE MBS_db;
USE MBS_db;

CREATE TABLE Social_media_posts(
    post_id    INT PRIMARY KEY,
    user_id    INT,
    username   VARCHAR(50),
    content    TEXT,
    post_date  DATETIME,
    likes      BIGINT,
    comments   BIGINT,
    shares     BIGINT,
    post_type VARCHAR(25) NOT NULL
);

SELECT * FROM Social_media_posts;

INSERT INTO Social_media_posts VALUES