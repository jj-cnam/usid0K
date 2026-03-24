DROP TABLE IF EXISTS lens;
CREATE TABLE lens(movieId VARCHAR(64), imdbId VARCHAR(64), tmdbIdL VARCHAR(64));
COPY lens(movieId, imdbId, tmdbIdl)
FROM '/tmp/links.csv'
DELIMITER ','
CSV HEADER;