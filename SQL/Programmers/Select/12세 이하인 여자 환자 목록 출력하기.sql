SELECT
    PT_NAME, PT_NO, GEND_CD, AGE, IFNULL(TLNO, 'NONE') AS TLNO
FROM
    PATIENT
WHERE
    AGE <= 12
  AND GEND_CD = 'W'
ORDER BY
    AGE DESC,
    PT_NAME ASC;

-- 학습한 내용
-- 1. NULL인 항목을 다른 문자열로 교체할려고 할 때에는 IFNULL(TLNO, 'NONE')으로 가능