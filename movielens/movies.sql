\c MEDAS;
DROP TABLE IF EXISTS movies;
CREATE TABLE movies(movieId VARCHAR(64), title VARCHAR(256),genres VARCHAR(128));
COPY movies(movieId,title,genres)
FROM '/tmp/movies.csv'
DELIMITER ','
CSV HEADER;