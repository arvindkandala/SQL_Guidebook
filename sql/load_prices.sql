INSERT INTO prices(symbol, date, open, high, low, close, adj_close, volume)
SELECT 'AAPL', Date, Open, High, Low, Close, "Adj Close", Volume
FROM aapl_raw;

INSERT INTO prices(symbol, date, open, high, low, close, adj_close, volume)
SELECT 'TSLA', Date, Open, High, Low, Close, "Adj Close", Volume
FROM tsla_raw;
