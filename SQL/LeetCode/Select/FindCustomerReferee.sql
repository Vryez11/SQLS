# Write your MySQL query statement below
select
    name
from
    Customer
where
    referee_id != 2 OR referee_id is null;

# 학습한 내용
# 1. NULL을 확인할려면 is NULL 또는 is not NULL 사용해야함.