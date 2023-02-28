SELECT College_jobs, Median, Unemployment_rate
FROM recent_grads
LIMIT 20;

SELECT Major
FROM recent_grads
WHERE Major_category='Arts'
LIMIT 5;

SELECT Major, Total, Median, Unemployment_rate
FROM recent_grads
WHERE (Major_category!='Engineering') 
AND Median <=50000 OR Unemployment_rate>0.065);

SELECT Major
FROM recent_grads
WHERE Major_category!='Engineering'
ORDER BY  Major DESC
LIMIT20;