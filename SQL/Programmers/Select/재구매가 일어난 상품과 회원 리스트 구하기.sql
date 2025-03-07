SELECT
    USER_ID, PRODUCT_ID
FROM
    ONLINE_SALE
GROUP BY
    USER_ID, PRODUCT_ID
HAVING
    COUNT(*) > 1
ORDER BY
    USER_ID ASC,
    PRODUCT_ID DESC;

-- 학습한 내용
-- 1. USER_ID, PRODUCT_ID을 그룹화해서 재구입 확인하는 방법든