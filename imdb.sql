CREATE TABLE Movies (
  id INTEGER PRIMARY KEY,
  Image text,
 Moviename text,
  Genre text
);

INSERT INTO Movies VALUES (1,'Image', 'Billa', 'Action');
INSERT INTO Movies VALUES (2, 'Image','Bigil', 'comedy');
INSERT INTO Movies VALUES (3,'Image', 'Manmadan', 'Romance');
INSERT INTO Movies VALUES (4,'Image', 'Naane Varuven', 'Horror');

CREATE TABLE artist (
  id INTEGER PRIMARY KEY,
  Actor text,
  skills text,
  roles INTEGER
);

INSERT INTO artist VALUES (1, 'Ajith','Fighter',2);
INSERT INTO artist VALUES (2, 'Vijay','Dancer',2);
INSERT INTO artist VALUES (3, 'Simbu','Dancer',2);
INSERT INTO artist VALUES (4, 'Dhanush','Singer',2);


CREATE TABLE users (
id INTEGER,
reviews text
);
INSERT INTO users VALUES (1, 'Blockbuster');
INSERT INTO users VALUES (2, 'Industry Hit');
INSERT INTO users VALUES (3, 'Blockbuster');
INSERT INTO users VALUES (4, 'Hit');


SELECT Movies.id,Movies.Moviename,Movies.Genre,artist.Actor,artist.skills,users.reviews
FROM Movies
INNER JOIN artist 
on Movies.id = artist.id
INNER JOIN users 
ON artist.id = users.id

UPDATE users
SET reviews = "bad"
WHERE id = 2;

