SELECT --check to make sure the number of rows in prices equals the total number of rows in aapl_raw and tsla_raw
    (SELECT count(*) from prices),
    (SELECT count(*) from aapl_raw),
    (SELECT count(*) from tsla_raw);
