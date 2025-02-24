SELECT
    DR_NAME,
    DR_ID,
    MCDP_CD,
    DATE_FORMAT(HIRE_YMD, '%Y-%m-%d') AS HIRE_YMD
FROM
    DOCTOR
WHERE
    MCDP_CD IN ('CS', 'GS')
ORDER BY
    HIRE_YMD DESC,
    DR_NAME ASC;

-- 학습한 내용
-- 1. HIRE_YMD가 같을 때 정렬을 추가로 할려면, 뒤에 조건을 바로 붙히면 된다.