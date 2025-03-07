SELECT
    b.TITLE,
    b.BOARD_ID,
    r.REPLY_ID,
    r.WRITER_ID,
    r.CONTENTS,
    DATE_FORMAT(r.CREATED_DATE, '%Y-%m-%d') AS CREATED_DATE
FROM
    USED_GOODS_BOARD AS b
INNER JOIN
    USED_GOODS_REPLY AS r
ON
    b.BOARD_ID = r.BOARD_ID
WHERE
    b.CREATED_DATE LIKE '2022-10%'
ORDER BY
    r.CREATED_DATE ASC,
    b.TITLE ASC;

-- 학습한 내용
-- 1. YEAR(), MONTH() 을 이용하는 거 보다, LIKE를 이용해서 조건 충족