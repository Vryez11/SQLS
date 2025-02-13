SELECT
    id
FROM
    Weather w1
JOIN
    Weather w2
ON
    DATEDIFF(w1.recordDate, w2.recordDate) = 1
WHERE
    w1.temperature > w2.temperature;

# 학습한 내용
# 1. DATEDIFF() : 날짜 (date) Type 에서 두 날짜의 차이를 반환하는 함수