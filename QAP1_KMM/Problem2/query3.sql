--3. Group the results using a GROUP BY clause
SELECT rating, COUNT(film_id) AS film_count FROM film GROUP BY rating;