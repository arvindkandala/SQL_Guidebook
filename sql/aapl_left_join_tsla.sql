--LEFT JOIN, for RIGHT JOIN just swap the order of AAPL and TSLA
SELECT a.symbol, a.date, a.close, t.close
from prices a 
LEFT JOIN prices t on a.date = t.date and t.symbol = 'TSLA'
WHERE a.symbol = 'AAPL'
ORDER by a.date 
limit 15;