select 
    date_format(trans_date, '%Y-%m') as month,
    country,
    count(id) AS trans_count,
    count(CASE WHEN state = 'approved' THEN 1 END) as approved_count,
    sum(amount) AS trans_total_amount,
    sum(CASE WHEN state = 'approved' THEN amount ELSE 0 END) as approved_total_amount
from Transactions
GROUP BY month, country;
