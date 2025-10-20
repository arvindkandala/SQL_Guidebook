--RANK, OVER, PARTITION BY, WITH
WITH ranked AS(
    SELECT
        symbol,
        date,
        volume,
        RANK() OVER (PARTITION BY symbol ORDER BY volume DESC) AS ranking
    FROM prices
)
SELECT 
    symbol,
    date,
    volume,
    ranking
FROM ranked
WHERE ranking <=10
ORDER by symbol, ranking;

