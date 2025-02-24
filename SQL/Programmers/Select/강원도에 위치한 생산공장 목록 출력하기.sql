SELECT
    FACTORY_ID,
    FACTORY_NAME,
    ADDRESS
FROM
    FOOD_FACTORY
WHERE
    ADDRESS LIKE '강원도%'
ORDER BY
    FACTORY_ID ASC;

-- 학습한 내용
-- 1. LIKE '%~%'를 이용해서 조건 문자열을 충족할 결과를 구할 수 있다.