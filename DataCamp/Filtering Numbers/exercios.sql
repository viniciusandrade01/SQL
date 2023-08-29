-- Select film_ids and imdb_score with an imdb_score over 7.0
SELECT film_id, imdb_score
FROM reviews
WHERE imdb_score > 7.0

-- Select film_ids and facebook_likes for ten records with less than 1000 likes 
SELECT film_id, facebook_likes
FROM reviews
WHERE facebook_likes < 1000
LIMIT 10;

-- Count the records with at least 100,000 votes
SELECT COUNT(*) AS films_over_100K_votes
FROM reviews
WHERE num_votes >= 100000;

-- Count the Spanish-language films
SELECT COUNT(*) AS count_spanish
FROM films
WHERE language LIKE 'Spanish';

-- Filter films released in 1994 or 1995, and certified PG or R
SELECT title
FROM films
WHERE (release_year = 1994 OR release_year = 1995)
AND (certification = 'PG' OR certification = 'R');

-- Filter films released in 1994 and 1995
SELECT title
FROM films
WHERE release_year BETWEEN 1994 AND 1995

-- Filter films released in 1994 and 2000, from the UK
SELECT title
FROM films
WHERE release_year
BETWEEN 1994 AND 2000 AND country = 'UK';

-- Select the title and release_year for all German-language films released before 2000
SELECT title, release_year 
FROM films
WHERE language = 'German' AND release_year < 2000;

-- Update the query to see all German-language films released after 2000
SELECT title, release_year
FROM films
WHERE release_year > 2000
	AND language = 'German';

-- Select all records for German-language films released after 2000 and before 2010
SELECT *
FROM films
WHERE release_year > 2000
	AND release_year < 2010
	AND language = 'German';

-- Find the title and year of films from the 1990 or 1999
SELECT title, release_year
FROM films
WHERE release_year = 1990
    OR release_year = 1999;


-- Filter the records to only include English or Spanish-language films and year between 1990 and 1999
SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 1999)
  AND (language = 'Spanish' OR language = 'English');

-- Filter the records to only include English or Spanish-language films and year between 1990 and 1999
SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 1999)
  AND (language = 'Spanish' OR language = 'English')
  AND gross >= 2000000;

-- Select the title and release_year for films released between 1990 and 2000
SELECT title, release_year
FROM films
WHERE release_year between 1990 and 2000;


-- Select the title and release_year for films released between 1990 and 2000 and films with budgets > $100 million
SELECT title, release_year
FROM films
WHERE release_year between 1990 and 2000;
	AND budget > 100000000;

-- Select the title and release_year for films released between 1990 and 2000 and films with budgets > $100 million and only return films with language Spanish.
SELECT title, release_year
FROM films
WHERE release_year between 1990 and 2000;
	AND budget > 100000000;
	AND language = 'Spanish';

-- Select the title and release_year for films released between 1990 and 2000 and films with budgets > $100 million and only return films with Spanish or French language .
SELECT title, release_year
FROM films
WHERE release_year between 1990 and 2000;
	AND budget > 100000000;
	AND (language = 'Spanish' OR language = 'French');