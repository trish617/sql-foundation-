SELECT * FROM personel;

UPDATE personel
SET hourly_pay = 60
WHERE emp_id = 3;

SELECT DISTINCT city
FROM personel;

SELECT city
FROM personel
where city = 'london';

SELECT * 
FROM 
    personel
ORDER BY
    hourly_pay DESC;

/* ORDER TO WRITE COMMANDS
SELECT
FROM 
WHERE
GROUP BY column
HAVING
ORDER BY
LIMIT;*/







