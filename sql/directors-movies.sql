SELECT
    directors.name, 
    COUNT(movies.id) AS 'Count'
FROM
    directors
LEFT JOIN
    movies
    ON (movies.directorid=directors.id)
GROUP BY
    directors.id, directors.name
ORDER BY
    directors.name