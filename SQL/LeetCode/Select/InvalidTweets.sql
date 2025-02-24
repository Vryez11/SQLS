# Write your MySQL query statement below
SELECT
    tweet_id
FROM
    Tweets
WHERE
    LENGTH(content) > 15;

-- 학습한 내용
-- 1. Type varchar 의 길이를 확인할 때에는 LENGTH(content) 함수로 확인 가능