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
	(1, 101, 'alice_wonder', 'Enjoying the weekend! #WeekendVibes', '2023-06-01 09:15:00', 245, 32, 12, 'image'),
	(2, 102, 'bob_tech', 'New smartphone review is live!', '2023-06-01 11:30:00', 180, 25, 8, 'video'),
	(3, 103, 'charlie_food', 'Homemade pizza recipe ', '2023-06-02 14:45:00', 520, 45, 30, 'image'),
	(4, 104, 'diana_travel', 'Sunset in Bali ', '2023-06-02 18:00:00', 890, 78, 42, 'image'),
	(5, 105, 'evan_fit', 'Morning workout routine ', '2023-06-03 07:30:00', 1200, 95, 65, 'reel'),
	(6, 106, 'fiona_art', 'New painting in progress ', '2023-06-03 13:20:00', 340, 21, 5, 'image'),
	(7, 107, 'gary_music', 'Cover of "Blinding Lights" ', '2023-06-04 16:10:00', 670, 43, 28, 'video'),
	(8, 108, 'hannah_books', 'Just finished this novel! ', '2023-06-04 20:45:00', 210, 15, 3, 'text'),
	(9, 109, 'ian_gaming', 'Speedrun record achieved! ', '2023-06-05 10:30:00', 1500, 112, 87, 'video'),
	(10, 110, 'jane_foodie', 'Sushi night! ', '2023-06-05 19:00:00', 430, 38, 19, 'image'),
	(11, 111, 'kevin_photo', 'Cityscape at night ', '2023-06-06 21:30:00', 760, 52, 31, 'image'),
	(12, 112, 'lisa_fitness', 'New PR at the gym! ', '2023-06-07 08:15:00', 320, 28, 9, 'reel'),
	(13, 113, 'mike_tech', 'Unboxing the new laptop', '2023-06-07 14:50:00', 410, 33, 12, 'video'),
	(14, 114, 'nina_travel', 'Exploring Tokyo streets ', '2023-06-08 10:20:00', 920, 67, 45, 'image'),
	(15, 115, 'oliver_cook', 'Baked a chocolate cake today! ', '2023-06-08 17:45:00', 540, 41, 22, 'image'),
	(16, 116, 'paula_style', 'Summer outfit ideas ', '2023-06-09 12:30:00', 380, 29, 14, 'image'),
	(17, 117, 'quincy_music', 'New song release tomorrow! ', '2023-06-09 19:10:00', 870, 59, 38, 'text'),
	(18, 118, 'rachel_art', 'Abstract painting finished ', '2023-06-10 15:00:00', 290, 19, 7, 'image'),
	(19, 119, 'sam_gaming', 'Live streaming Fortnite tonight!', '2023-06-10 22:00:00', 1350, 98, 72, 'video'),
	(20, 120, 'tina_food', 'Breakfast smoothie bowl ', '2023-06-11 09:45:00', 510, 36, 18, 'image'),
	(21, 121, 'umar_photo', 'Wildlife photography ', '2023-06-11 16:30:00', 680, 47, 26, 'image'),
	(22, 122, 'vicky_fit', 'Yoga session by the beach ', '2023-06-12 07:20:00', 420, 31, 11, 'reel'),
	(23, 123, 'will_tech', 'Building a custom PC setup', '2023-06-12 13:40:00', 590, 42, 20, 'video'),
	(24, 124, 'xena_travel', 'Hiking in the Alps ', '2023-06-13 11:15:00', 780, 54, 33, 'image'),
	(25, 125, 'yara_bake', 'Macarons anyone? ', '2023-06-13 18:50:00', 370, 27, 10, 'image'),
	(26, 126, 'zack_gadgets', 'Testing wireless earbuds', '2023-06-14 10:25:00', 450, 34, 13, 'video'),
	(27, 127, 'amy_books', 'Book recommendations thread!', '2023-06-14 17:30:00', 190, 14, 4, 'text'),
	(28, 128, 'ben_art', 'Charcoal portrait sketch ', '2023-06-15 14:10:00', 310, 22, 8, 'image'),
	(29, 129, 'cara_gaming', 'Minecraft castle build timelapse', '2023-06-15 21:00:00', 1100, 76, 55, 'video'),
	(30, 130, 'dave_food', 'BBQ party essentials ', '2023-06-16 12:45:00', 630, 45, 24, 'image'),
	(31, 131, 'ella_photo', 'Golden hour portraits ', '2023-06-16 19:20:00', 720, 51, 29, 'image'),
	(32, 132, 'finn_fitness', 'Home workout without equipment', '2023-06-17 08:30:00', 390, 26, 12, 'reel'),
	(33, 133, 'grace_tech', 'iOS 17 first impressions', '2023-06-17 15:15:00', 530, 39, 17, 'video'),
	(34, 134, 'henry_travel', 'Safari adventure in Kenya ', '2023-06-18 09:50:00', 950, 63, 41, 'image'),
	(35, 135, 'ivy_cook', 'Vegan brownie recipe ', '2023-06-18 16:40:00', 480, 35, 16, 'image'),
	(36, 136, 'jack_style', 'Formal wear inspiration ', '2023-06-19 13:25:00', 270, 18, 6, 'image'),
	(37, 137, 'kate_music', 'Piano cover of "Clocks', '2023-06-19 20:10:00', 810, 57, 34, 'video'),
	(38, 138, 'leo_art', 'Watercolor landscape', '2023-06-20 11:45:00', 350, 24, 9, 'image'),
	(39, 139, 'mia_gaming', 'Valorant tournament highlights', '2023-06-20 18:30:00', 1250, 84, 62, 'video'),
	(40, 140, 'noah_food', 'Pasta carbonara recipe', '2023-06-21 10:15:00', 570, 40, 21, 'image'),
	(41, 141, 'olivia_photo', 'Underwater photography ', '2023-06-21 17:00:00', 690, 48, 27, 'image'),
	(42, 142, 'peter_fit', 'Marathon training day 30 ', '2023-06-22 07:45:00', 440, 32, 13, 'reel'),
	(43, 143, 'quinn_tech', 'DIY home automation project', '2023-06-22 14:30:00', 610, 44, 19, 'video'),
	(44, 144, 'rose_travel', 'Northern lights in Iceland ', '2023-06-23 10:05:00', 830, 58, 37, 'image'),
	(45, 145, 'steve_bake', 'Sourdough bread tutorial ', '2023-06-23 16:50:00', 520, 37, 20, 'image'),
	(46, 146, 'tara_gadgets', 'Smartwatch comparison 2023', '2023-06-24 12:35:00', 470, 35, 15, 'video'),
	(47, 147, 'uma_books', 'Reading challenge update: 20/50', '2023-06-24 19:20:00', 230, 17, 5, 'text'),
	(48, 148, 'vince_art', 'Digital art commission open!', '2023-06-25 15:55:00', 330, 23, 10, 'image'),
	(49, 149, 'willa_gaming', 'Speedrunning Mario 64', '2023-06-25 22:40:00', 1400, 92, 68, 'video'),
	(50, 150, 'xander_food', 'Thai green curry recipe ', '2023-06-26 14:25:00', 650, 46, 25, 'image'),
	(51, 151, 'yara_photo', 'Pet photography workshop ', '2023-06-26 21:10:00', 740, 53, 30, 'image'),
	(52, 152, 'zane_fitness', 'Post-workout meal prep ', '2023-06-27 08:55:00', 400, 28, 11, 'reel'),
	(53, 153, 'ava_tech', 'Best budget laptops 2023', '2023-06-27 15:40:00', 550, 41, 18, 'video'),
	(54, 154, 'brian_travel', 'Road trip across Route 66 ', '2023-06-28 11:15:00', 880, 61, 39, 'image'),
	(55, 155, 'cara_cook', 'Gluten-free pancakes ', '2023-06-28 18:00:00', 490, 36, 17, 'image'),
	(56, 156, 'dylan_style', 'Winter fashion lookbook ', '2023-06-29 13:45:00', 300, 21, 8, 'image'),
	(57, 157, 'emma_music', 'Singing my original song!', '2023-06-29 20:30:00', 790, 56, 35, 'video'),
	(58, 158, 'finn_art', 'Graffiti mural progress ', '2023-06-30 12:05:00', 360, 25, 10, 'image'),
	(59, 159, 'gia_gaming', 'Apex Legends clutch moment', '2023-06-30 18:50:00', 1150, 79, 58, 'video'),
	(60, 160, 'hugo_food', 'French onion soup recipe ', '2023-07-01 10:35:00', 580, 42, 22, 'image'),
	(61, 161, 'isla_photo', 'Foggy forest morning ', '2023-07-01 17:20:00', 710, 50, 28, 'image'),
	(62, 162, 'jake_fit', '5-minute ab workout ', '2023-07-02 09:05:00', 430, 31, 12, 'reel'),
	(63, 163, 'kate_tech', 'Setting up a home server', '2023-07-02 15:50:00', 620, 45, 20, 'video'),
	(64, 164, 'liam_travel', 'Scuba diving in the Maldives ', '2023-07-03 11:25:00', 900, 64, 42, 'image'),
	(65, 165, 'maya_bake', 'Red velvet cupcakes ', '2023-07-03 18:10:00', 530, 38, 19, 'image'),
	(66, 166, 'nathan_gadgets', 'Drone footage compilation ', '2023-07-04 13:55:00', 490, 36, 16, 'video'),
	(67, 167, 'olivia_books', 'Favorite fantasy novels list', '2023-07-04 20:40:00', 250, 19, 6, 'text'),
	(68, 168, 'pablo_art', 'Pottery class results ', '2023-07-05 16:15:00', 340, 24, 9, 'image'),
	(69, 169, 'quinn_gaming', 'Zelda: Tears of the Kingdom 100%', '2023-07-05 23:00:00', 1300, 87, 64, 'video'),
	(70, 170, 'riya_food', 'Chocolate chip cookies ', '2023-07-06 14:45:00', 670, 48, 26, 'image'),
	(71, 171, 'sam_photo', 'Astrophotography attempt ', '2023-07-06 21:30:00', 760, 54, 31, 'image'),
	(72, 172, 'tara_fitness', 'Pilates for beginners', '2023-07-07 08:15:00', 410, 29, 11, 'reel'),
	(73, 173, 'umar_tech', 'Building a Raspberry Pi cluster', '2023-07-07 15:00:00', 590, 43, 19, 'video'),
	(74, 174, 'vicky_travel', 'Hot air balloon festival ', '2023-07-08 10:35:00', 920, 65, 43, 'image'),
	(75, 175, 'will_cook', 'Homemade ramen bowl ', '2023-07-08 17:20:00', 550, 40, 21, 'image'),
	(76, 176, 'xena_style', 'Accessory haul ', '2023-07-09 13:05:00', 320, 22, 8, 'image'),
	(77, 177, 'yara_music', 'Guitar cover of "Wonderwall"', '2023-07-09 19:50:00', 850, 60, 36, 'video'),
	(78, 178, 'zack_art', 'Oil painting techniques', '2023-07-10 11:25:00', 370, 26, 10, 'image'),
	(79, 179, 'amy_gaming', 'League of Legends pentakill', '2023-07-10 18:10:00', 1200, 82, 60, 'video'),
	(80, 180, 'ben_food', 'Breakfast burrito recipe ', '2023-07-11 09:55:00', 600, 44, 23, 'image'),
	(81, 181, 'cara_photo', 'Sunflower field portraits ', '2023-07-11 16:40:00', 730, 52, 29, 'image'),
	(82, 182, 'dave_fit', 'Kettlebell workout routine', '2023-07-12 08:25:00', 450, 33, 13, 'reel'),
	(83, 183, 'ella_tech', 'My coding setup for 2023', '2023-07-12 15:10:00', 640, 47, 21, 'video'),
	(84, 184, 'finn_travel', 'Backpacking through Vietnam', '2023-07-13 10:45:00', 970, 68, 44, 'image'),
	(85, 185, 'grace_bake', 'Lemon meringue pie ', '2023-07-13 17:30:00', 510, 37, 18, 'image'),
	(86, 186, 'henry_gadgets', 'VR headset first impressions', '2023-07-14 13:15:00', 500, 38, 17, 'video'),
	(87, 187, 'ivy_books', 'Book club meeting today!', '2023-07-14 20:00:00', 220, 16, 5, 'text'),
	(88, 188, 'jack_art', 'Chalk art festival entry', '2023-07-15 15:35:00', 360, 25, 10, 'image'),
	(89, 189, 'kate_gaming', 'Minecraft mega build tour', '2023-07-15 22:20:00', 1250, 85, 63, 'video'),
	(90, 190, 'leo_food', 'Authentic tacos al pastor ', '2023-07-16 14:05:00', 680, 49, 27, 'image'),
	(91, 191, 'mia_photo', 'Black & white street photography', '2023-07-16 20:50:00', 780, 56, 32, 'image'),
	(92, 192, 'noah_fitness', 'Yoga for back pain relief', '2023-07-17 08:35:00', 420, 30, 12, 'reel'),
	(93, 193, 'olivia_tech', 'How I organize my Notion', '2023-07-17 15:20:00', 660, 49, 22, 'video'),
	(94, 194, 'peter_travel', 'Skiing in the Swiss Alps ', '2023-07-18 10:55:00', 940, 66, 45, 'image'),
	(95, 195, 'quinn_cook', 'Eggs Benedict tutorial ', '2023-07-18 17:40:00', 570, 42, 22, 'image'),
	(96, 196, 'rose_style', 'Vintage thrift finds ', '2023-07-19 13:25:00', 350, 24, 9, 'image'),
	(97, 197, 'steve_music', 'Piano jazz improvisation', '2023-07-19 20:10:00', 890, 63, 38, 'video'),
	(98, 198, 'tara_art', 'Inktober day 1 drawing', '2023-07-20 11:45:00', 390, 27, 11, 'image'),
	(99, 199, 'umar_gaming', 'CS:GO tournament finals', '2023-07-20 18:30:00', 1400, 95, 70, 'video'),
	(100, 200, 'vicky_food', 'Matcha latte art ', '2023-07-21 10:15:00', 620, 45, 24, 'image');


SELECT * FROM Social_media_posts
ORDER BY post_date DESC;

SELECT * FROM Social_media_posts
ORDER BY post_date;

SELECT user_id,username,post_id,likes FROM Social_media_posts
ORDER BY likes DESC
LIMIT 5;

SELECT * FROM Social_media_posts
WHERE post_type='video' AND likes>500;

SELECT * FROM Social_media_posts
WHERE post_type='text' AND comments<10;

SELECT post_type,ROUND(AVG(likes),2) AS Average_likes FROM Social_media_posts
GROUP BY post_type
HAVING post_type IN ('image','video');

SELECT  user_id,username,post_type FROM  Social_media_posts s1
HAVING NOT EXISTS(
	SELECT 1 FROM Social_media_posts s2
    WHERE s1.user_id=s2.user_id AND s2.post_type='video'
);

SELECT *,ROUND(likes/comments,2) AS like_to_comment_ratio FROM Social_media_posts
WHERE ROUND(likes/comments,2)>5;

SELECT user_id,username,AVG(comments) AS Average_Comments FROM Social_media_posts
GROUP BY user_id,username
HAVING Average_comments>50;

SELECT *, DAYNAME(post_date) AS Day_of_Week FROM Social_media_posts
WHERE DAYNAME(post_date) IN ('Sunday','Saturday')
ORDER BY DAYNAME(post_date);

SELECT DAYNAME(post_date) AS Day_of_Week,COUNT(*) AS Total_Posts FROM Social_media_posts
GROUP BY DAYNAME(post_date);

SELECT HOUR(post_date) AS Hour, SUM(likes+comments+shares) AS Total_Engagements FROM Social_media_posts
GROUP BY Hour
ORDER BY Hour;

SELECT post_type,ROUND( COUNT(*)*100.0/(SELECT COUNT(*) FROM Social_media_posts),2) AS Percentage FROM Social_media_posts
GROUP BY post_type;

SELECT user_id,username FROM Social_media_posts
WHERE content LIKE '%food%' AND content LIKE '%travel%'
GROUP BY user_id,username
HAVING SUM(CASE WHEN content LIKE '%food%' THEN 1 ELSE 0 END) >0
   AND SUM(CASE WHEN content LIKE '%travel%' THEN 1 ELSE 0 END) >0;
   
SELECT user_id,username, SUM(likes+comments+shares) AS Total_Engagements FROM Social_media_posts
GROUP BY user_id,username
ORDER BY Total_Engagements DESC
LIMIT 3;

SELECT * FROM Social_media_posts
WHERE content REGEXP 
'[\\x{1F300}-\\x{1F6FF}\\x{1F700}-\\x{1F77F}\\x{1F900}-\\x{1F9FF}\\x{1FA70}-\\x{1FAFF}\\x{2600}-\\x{27BF}]';

SELECT REGEXP_SUBSTR(content,'#\\w+') AS Hashtag, COUNT(*) AS Frequency FROM Social_media_posts
WHERE content REGEXP '#\\w+'
GROUP BY Hashtag
ORDER BY Frequency DESC
LIMIT 1;

SELECT *,(likes+shares+comments) AS TOTAL_ENGAGEMENTS FROM Social_media_posts 
ORDER BY  TOTAL_ENGAGEMENTS DESC
LIMIT 10;

