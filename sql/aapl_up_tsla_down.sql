-- INNER JOIN
WITH returns AS (
    SELECT symbol, date, close,
        (close - lag(close) OVER (PARTITION BY symbol order by date))
        /lag(close) OVER (PARTITION BY symbol order by date) as return 
    FROM prices
)
SELECT a.date, a.return AS aapl_return, t.return AS tsla_return
FROM returns a 
INNER JOIN returns t ON a.date = t.date 
WHERE a.symbol = 'AAPL' AND t.symbol = 'TSLA'
AND a.return > 0 and t.return <0
ORDER by a.date
LIMIT 15;
