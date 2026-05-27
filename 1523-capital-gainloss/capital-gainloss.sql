# Write your MySQL query statement below
#sqljourney-MV
SELECT stock_name,
    SUM(
    CASE
        WHEN operation = 'BUY' THEN -price
        WHEN operation = 'SELL' THEN price
    END)
    AS capital_gain_loss
FROM Stocks 
GROUP BY stock_name