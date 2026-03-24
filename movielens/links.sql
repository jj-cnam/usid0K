DROP TABLE lens IF EXISTS;
CREATE TABLE lens;
COPY lens(movieId, imdbId, tmdbIdl)
FROM 'tmp/links.csv'
DELIMITER ','
CSV HEADER;