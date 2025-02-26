SELECT
    D.ID, D.EMAIL, D.FIRST_NAME, D.LAST_NAME
FROM
    DEVELOPERS D
WHERE
    EXISTS (
        SELECT 1
        FROM SKILLCODES S
        WHERE (D.SKILL_CODE & S.CODE) = S.CODE
        AND S.NAME IN ('Python', 'C#')
    )
ORDER BY
    D.ID;


-- 학습한 내용
-- 1. & , | 비트 연산 가능
-- 2. CONV (데이터 원본, 원래 진수, 변환 진수) : 진수 변환법
-- 3. EXISTS : SQL에서 서브쿼리가 특정 조건을 만족하는 행이 존재하는지 확인하는 연산자이다.
--             EXISTS는 서브쿼리의 결과가 한 개 이상 존재하면 TRUE를 반환하고, 그렇지 않으면 FALSE를 반환한다.
-- 4. EXISTS와 IN의 차이점 : EXISTS : 서브 쿼리에 조건을 만족하는 행이 "존재하는지"를 확인
--                         이IN : 서브쿼리에 반환된 특정 값과 일치하는지 비교