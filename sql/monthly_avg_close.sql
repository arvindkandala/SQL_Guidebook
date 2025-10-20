-- group by and having
SELECT
    symbol,
    strftime('%Y-%m', date) as ym,
    AVG(close) as closingAvg
FROM prices
GROUP BY symbol, ym
HAVING COUNT(*) >=15
ORDER BY symbol, ym
limit 15;
