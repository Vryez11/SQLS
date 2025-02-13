SELECT
    euni.unique_id, e.name
FROM
    Employees e
    LEFT JOIN EmployeeUNI euni ON e.id = euni.id;

# 학습한 내용
# 1. LEFT JOIN 사용법 : 테이블 별명 지정해주고 ON 을 통해 비교할 값 지정