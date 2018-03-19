USE codeup_test_db;
SELECT 'All Pink Floyd Albums' AS 'Exercise 2A';
SELECT name FROM albums
WHERE artist = 'pink floyd';

SELECT 'Sgt. Peppers Lonely Hearts Club Band release date' AS 'Exercise 2B';
SELECT release_date FROM albums
WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';

SELECT 'Genre for Nevermind' AS 'Exercise 2C';
SELECT genre FROM albums
WHERE name = 'Nevermind';

SELECT 'Albums from the 90s' AS 'Exercise 2D';
SELECT * FROM albums
-- WHERE release_date > 1990 && release_date < 2000;
WHERE BETWEEN 1990 AND 1999;

SELECT 'Albums with sales lower than $20M' AS 'Exercise 2E';
SELECT * FROM albums
WHERE sales < 20.00;

SELECT 'All rock Albums' AS 'Exercise 2F';
SELECT * FROM albums
WHERE genre = 'Rock';