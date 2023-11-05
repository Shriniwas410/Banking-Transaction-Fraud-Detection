-- Number of fraudulent transactions for each transaction type.

SELECT type, isFraud, count(*) as cnt
FROM `finance.fraud_data`
GROUP BY isFraud, type
ORDER BY type

-- Number of fraudulent transactions for Most count Ordered by Amount.
SELECT *
FROM `finance.fraud_data`
WHERE type in ("CASH_OUT", "TRANSFER")
ORDER BY amount desc