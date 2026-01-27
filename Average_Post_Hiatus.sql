-- Platform: Datalemur
-- Problem: Average Post Hiatus 
-- Difficulty: Easy
-- Link: https://datalemur.com/questions/sql-average-post-hiatus-1

SELECT user_id,
DATEDIFF(MAX(DATE(post_date)), MIN(DATE(post_date))) AS days_between
FROM posts
WHERE YEAR(post_date) = 2021
GROUP BY user_id
HAVING COUNT(post_date) > 1;