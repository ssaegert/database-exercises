use codeup_test_db;
DESCRIBE albums;
ALTER TABLE albums
    ADD UNIQUE (artist, name);

SELECT * FROM albums;

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('Michael Jackson',	'Thriller',	'1982',	'Pop, Rock, R&B',	'47.3');

DELETE FROM albums WHERE id = 32;

