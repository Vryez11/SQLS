# Write your MySQL query statement below
SELECT DISTINCT
    author_id as id
FROM
    Views
WHERE
    author_id = viewer_id
ORDER BY
    id ASC;

# 학습한 내용
# 1. as 로 별명 붙히기
# 2. ASC 사용법 : ORDER BY id ASC; 와 같이 정렬할 대상을 ASC 앞에 붙혀야 한다.