SELECT 
    f.title, 
    c.name AS category_name, 
    AVG(f.rental_rate) AS avg_rental_rate, 
    COUNT(f.film_id) AS film_count
FROM 
    film f
JOIN 
    film_category fc 
ON 
    f.film_id = fc.film_id
JOIN 
    category c 
ON 
    fc.category_id = c.category_id
WHERE 
    f.length > 100
GROUP BY 
    c.name, f.title
ORDER BY 
    avg_rental_rate DESC;
