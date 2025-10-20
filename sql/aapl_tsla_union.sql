-- Top 3 AAPL volume days
WITH top_aapl AS (
  SELECT date, volume, symbol
  FROM prices
  WHERE symbol='AAPL'
  ORDER BY volume DESC
  LIMIT 3
),
-- Top 3 TSLA volume days
top_tsla AS (
  SELECT date, volume, symbol
  FROM prices
  WHERE symbol='TSLA'
  ORDER BY volume DESC
  LIMIT 3
)
-- Combine:
SELECT * FROM top_aapl
UNION ALL 
SELECT * FROM top_tsla
ORDER BY volume DESC;
