# SQL_Guidebook
Practice and guide for basic SQL functions

My queries included:
    -creating table and inserting column headers (I did it directly in terminal instead of putting the query in a sql file) 
        Pictures in screenshots for grading folder CreateTable

    - insert data into prices: load_prices.sql
        InsertCompanies, InsertData

    - check to make sure data correctly put in: check_prices_num_rows.sql

    - first 5 Apple rows by date: apple_rows_by_date.sql
        SelectFromWhereOrderByLimit

    - monthly avg close per symbol, months with >= 15 trading days: monthly_avg_close.sql
        GroupByHavingAvgStringDate

    - day-over-day returns: daily_returns.sql
        RowNumbersAvg

    - rolling 20-day moving average of close: moving_avg.sql
        RowNumbersAvg

    - top 10 volume days per symbol: top_10_volume.sql
        RankOverPartitionByWith

    - days when Apple is up but Tesla is down: aapl_up_tsla_down.sql
        InnerJoin

    - left join Apple data on Tesla data based on dates (right join can be done by just swapping the order of the left join): aapl_lest_join_tsla.sql
        LeftRightJoin

    - top 3 volume days for Apple and Tesla: appl_left_join_tsla.sql
        Union