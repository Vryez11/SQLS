WITH ProcessTime AS (
    SELECT
        a.machine_id,
        (b.timestamp - a.timestamp) AS process_time
    FROM Activity AS a
             JOIN Activity AS b
                  ON a.machine_id = b.machine_id
                      AND a.process_id = b.process_id
                      AND a.activity_type = 'start'
                      AND b.activity_type = 'end'
)
SELECT
    machine_id,
    ROUND(AVG(process_time), 3) AS processing_time
FROM ProcessTime
GROUP BY machine_id;


-- 학습한 내용
-- 1. WITH 절 ProcessTime 생성
-- 2. ROUND(AVG(process_time), 3) : 소수점 3자리에서 반올림