-- Query the sum of film durations
SELECT SUM(duration) as total_duration
FROM films

-- Calculate the average duration of all films
SELECT AVG(duration) AS average_duration
FROM films;

-- Find the latest release_year
SELECT MAX(release_year) AS latest_year
FROM films;

-- Find the most recent release_year in the films table, aliasing as latest_year
SELECT MIN(release_year) AS latest_year
FROM films;

-- Find the duration of the shortest film
SELECT MIN(duration) AS shortest_film
FROM films;