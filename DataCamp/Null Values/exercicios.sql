-- Select name of the people table with birthdate not information
SELECT name
FROM people
WHERE birthdate IS NULL;

-- Select how many values from the people table do not have a provided birthdate
SELECT COUNT(*) AS no_birthdates
FROM people
WHERE birthdate IS NULL;

-- Select how many values from the people table do have a provided birthdate
SELECT COUNT(name) AS count_birthdates
FROM people
WHERE birthdate IS NOT NULL;

-- List all film titles with missing budgets
SELECT title AS no_budget_info
FROM films
WHERE budget IS NULL;

-- Count the number of films we have language data for
SELECT COUNT(title) AS count_language_known
FROM films
WHERE language IS NOT NULL;