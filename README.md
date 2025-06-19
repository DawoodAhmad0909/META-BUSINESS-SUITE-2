# META-BUSINESS-SUITE-2
## Overview
This project involves the design and implementation of a social media analytics database that stores and manages data related to user-generated content on social platforms. The main focus is on tracking posts made by users, their types, and their engagement metrics—likes, comments, and shares. The data structure enables detailed analysis of user activity, content popularity, and audience interaction trends.
## Objectives 
#### 1. Data Storage:
 Create a well-structured database table to store social media post information including usernames, content types, timestamps, and engagement metrics.
#### 2. Post Categorization:
 Classify posts based on content types (e.g., text, image, video, link) for segmented analysis.
#### 3. Engagement Tracking: 
Record and analyze likes, comments, and shares to evaluate post performance.
#### 4. User Behavior Analysis:  
Identify active users and their posting patterns.
#### 5. Content Performance Insight:
 Determine which post types and users receive the most engagement.
#### 6. Support Decision-Making: 
 Enable data-driven insights for marketing, content strategy, and user engagement enhancement.
## Creating Database 
CREATE DATABASE MBS_db;
USE MBS_db;
## Creating Table 
### Table:Social_media_posts
``| sql
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
```

#### 1. List all posts with their content and engagement metrics (likes, comments, shares), sorted by most recent.
``` sql
SELECT * FROM Social_media_posts
ORDER BY post_date DESC;
```
#### 2. Show all usernames and their join dates, ordered by earliest joiners first.
``` sql
SELECT * FROM Social_media_posts
ORDER BY post_date;
```
#### 3. Display the top 5 most-liked posts with their usernames.
``` sql
SELECT user_id,username,post_id,likes FROM Social_media_posts
ORDER BY likes DESC
LIMIT 5;
```
#### 4. Find all video posts with more than 500 likes.
``` sql
SELECT * FROM Social_media_posts
WHERE post_type='video' AND likes>500;
```
#### 5. List text posts that have fewer than 10 comments.
``` sql
SELECT * FROM Social_media_posts
WHERE post_type='text' AND comments<10;
```
#### 6. Show the average number of likes for image posts vs. video posts.
``` sql
SELECT post_type,ROUND(AVG(likes),2) AS Average_likes FROM Social_media_posts
GROUP BY post_type
HAVING post_type IN ('image','video');
```
#### 7. Identify users who have never posted a video.
``` sql
SELECT  user_id,username,post_type FROM  Social_media_posts s1
HAVING NOT EXISTS(
        SELECT 1 FROM Social_media_posts s2
    WHERE s1.user_id=s2.user_id AND s2.post_type='video'
);
```
#### 8. Find posts with a like-to-comment ratio greater than 5:1.
``` sql
SELECT *,ROUND(likes/comments,2) AS like_to_comment_ratio FROM Social_media_posts
WHERE ROUND(likes/comments,2)>5;
```
#### 9. Show users whose posts average more than 50 comments per post.
``` sql
SELECT user_id,username,AVG(comments) AS Average_Comments FROM Social_media_posts
GROUP BY user_id,username
HAVING Average_comments>50;
```
#### 10. List posts made on weekends (Saturday/Sunday).
``` sql
SELECT *, DAYNAME(post_date) AS Day_of_Week FROM Social_media_posts
WHERE DAYNAME(post_date) IN ('Sunday','Saturday')
ORDER BY DAYNAME(post_date);
```
#### 11. Show the number of posts per day of the week.
``` sql
SELECT DAYNAME(post_date) AS Day_of_Week,COUNT(*) AS Total_Posts FROM Social_media_posts
GROUP BY DAYNAME(post_date);
```
#### 12. Find the hour of the day with the highest average engagement (likes + comments + shares).
``` sql
SELECT HOUR(post_date) AS Hour, SUM(likes+comments+shares) AS Total_Engagements FROM Social_media_posts
GROUP BY Hour
ORDER BY Hour;
```
#### 13. Calculate the percentage of each post type (text/image/video/reel) in the dataset.
``` sql
SELECT post_type,ROUND( COUNT(*)*100.0/(SELECT COUNT(*) FROM Social_media_posts),2) AS Percentage FROM Social_media_posts
GROUP BY post_type;
```
#### 14. Identify users who posted both food and travel content.
``` sql
SELECT user_id,username FROM Social_media_posts
WHERE content LIKE '%food%' AND content LIKE '%travel%'
GROUP BY user_id,username
HAVING SUM(CASE WHEN content LIKE '%food%' THEN 1 ELSE 0 END) >0
   AND SUM(CASE WHEN content LIKE '%travel%' THEN 1 ELSE 0 END) >0;
```
#### 15. Find the 3 users with the highest total engagement (sum of likes, comments, shares) 
``` sql
SELECT user_id,username, SUM(likes+comments+shares) AS Total_Engagements FROM Social_media_posts
GROUP BY user_id,username
ORDER BY Total_Engagements DESC
LIMIT 3;
```
#### 16. List posts containing emojis in their content.
``` sql
SELECT * FROM Social_media_posts
WHERE content REGEXP 
'[\\x{1F300}-\\x{1F6FF}\\x{1F700}-\\x{1F77F}\\x{1F900}-\\x{1F9FF}\\x{1FA70}-\\x{1FAFF}\\x{2600}-\\x{27BF}]';
```
#### 17. Find posts with hashtags and show the most frequently used hashtag.
``` sql
SELECT REGEXP_SUBSTR(content,'#\\w+') AS Hashtag, COUNT(*) AS Frequency FROM Social_media_posts
WHERE content REGEXP '#\\w+'
GROUP BY Hashtag
ORDER BY Frequency DESC
LIMIT 1;
```
#### 18. Show the 10 posts with the highest engagement rate (engagement per follower - requires user table join) 
``` sql
SELECT *,(likes+shares+comments) AS TOTAL_ENGAGEMENTS FROM Social_media_posts 
ORDER BY  TOTAL_ENGAGEMENTS DESC
LIMIT 10;
```

## Conclusion
The social media analytics database provides a robust foundation for monitoring and analyzing user activity and engagement. By storing structured data on social media posts, the system allows stakeholders to:
#### •Track content trends.
#### •Identify influential users.


