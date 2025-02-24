SELECT
    customer_id, COUNT(*) AS count_no_trans
FROM
    Visits AS v
    LEFT JOIN Transactions AS t ON v.visit_id = t.visit_id
WHERE
    t.visit_id is NULL
GROUP BY
    customer_id;

-- 학습한 내용
-- 1. GROUP BY : 특정 컬럼을 기준으로 데이터를 그룹화 하는 SQL 절
--               같은 값을 가진 행들끼리 묶어서 하나의 그룹으로 만든다.
-- 2. COUNT() : 특정 그룹이나 전체 데이터에서 행의 개수를 세는 함수이다.
--              COUNT(*) : 모든 행 개수를 센다(NULL 포함)
--              COUNT(컬럼명) : NULL을 제외한 개수를 센다.