-- Platform: Datalemur
-- Problem: Teams Power Users
-- Difficulty: Easy
-- Link: https://datalemur.com/questions/teams-power-users

SELECT sender_id,
COUNT(*) AS message_count
FROM messages
WHERE sent_date BETWEEN '08/01/2022 00:00:00' AND '08/31/2022 00:00:00'
GROUP BY sender_id
ORDER BY COUNT(*) DESC
LIMIT 2;