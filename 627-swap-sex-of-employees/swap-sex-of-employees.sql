# Write your MySQL query statement below
#sqljourney-mv
UPDATE Salary
SET sex = IF('m' = sex, 'f', 'm')