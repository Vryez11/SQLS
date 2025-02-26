SELECT
    i.ITEM_ID, i.ITEM_NAME, i.RARITY
FROM
    ITEM_INFO as i
WHERE
    ITEM_ID IN (SELECT ITEM_ID
                FROM ITEM_TREE
                WHERE PARENT_ITEM_ID IN (SELECT ITEM_ID
                                         FROM ITEM_INFO
                                         WHERE RARITY = 'RARE'))
ORDER BY
    i.ITEM_ID DESC;

-- 학습한 내용
-- 1. IN 키워드 : ITEM_ID 가 IN (안에 있는 값일 때)
-- 2. 중첩 SELECT : 위의 문제를 설명하면서 내려가보면, PARENT_ITEM_ID가 RARITY가 RARE인 ITEM_ID 일 때,
--                  PARENT_ITEM_ID가 있을 때 ITEM_ID안에 있는 ITEM_INFO 테이블의 ITEM_ID