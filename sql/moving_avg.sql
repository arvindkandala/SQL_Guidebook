SELECT 
    symbol,
    date,
    AVG(close) OVER (
        PARTITION BY symbol ORDER BY date 
        ROWS BETWEEN 19 PRECEDING AND CURRENT ROW
        ) as moving_avg
FROM prices
ORDER BY symbol, date 
limit 40;