-- window function with LAG, CASE WHEN

WITH returns AS(
    SELECT
        symbol,
        date,
        close,
        LAG(close) OVER (PARTITION BY symbol ORDER BY date) as prev_close
    FROM prices
)
SELECT
    symbol,
    date,
    CASE WHEN prev_close = 0 OR prev_close ISNULL THEN NULL
        ELSE (close-prev_close)/prev_close END AS daily_returns
FROM returns
ORDER BY symbol, date
limit 15;



