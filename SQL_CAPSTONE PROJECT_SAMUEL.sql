CREATE DATABASE celebs;
USE celebs;

# Create fact table famous people
CREATE TABLE famous_people 
    (id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    profession VARCHAR(50) NOT NULL);
    
/*Insert data into tables*/
INSERT INTO famous_people (name, profession) VALUES
("Nana Kwame Bediako", "Entrpreneur"),
("Sarkodie", "Musician"),
("Denzel Washington", "Actor"),
("Jackie Appiah", "Actor"),
("Priscilla Shirer", "Author"),
("M.anifest", "Musician"),
("George Martin", "Author"),
("Georges Prosper Remi", "Author");

-- Query the table
SELECT * FROM famous_people;


# Create dimensional tables
/*create table movies*/
CREATE TABLE movies 
	(id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    actor_id INT,
    FOREIGN KEY (actor_id) REFERENCES famous_people(id));
    
/*insert data into movies tables*/
INSERT INTO movies (title, actor_id) VALUES
("The Great Debators", 3),
("Man on Fire", 3),
('Things We Do for Love', 4),
('The Perfect Picture', 4);

-- Query the table
SELECT * FROM movies;


/*create table songs*/
CREATE TABLE songs 
    (id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    musician_id INT,
    FOREIGN KEY (musician_id) REFERENCES famous_people(id));
    
/*insert data into songs table*/
INSERT INTO songs (title, musician_id) VALUES
("Otan", 2),
("Revenge of the Spartans", 2),
("Blue", 6),
("Azumah Nelson", 6);

-- Query the table
SELECT * FROM songs;


/*create table books*/
CREATE TABLE books 
    (id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES famous_people(id));
    
/*insert data into books table*/
INSERT INTO books (title, author_id) VALUES
("God is Able", 5),
("The Prince Warriors", 5),
("Fervent", 5),
("The Game of Thrones", 7),
("The Calculus Affair", 8),
("The adventures of Tintin Series 1 to 2", 8);

-- Query the table books
SELECT * FROM books;


/*create table fictional characters*/
CREATE TABLE fictional_characters 
   (id INT PRIMARY KEY AUTO_INCREMENT,
    character_name VARCHAR(100) NOT NULL,
    appearance VARCHAR(255),
    book_id INT,
    FOREIGN KEY (book_id) REFERENCES books(id));
    

/*Insert data into fictional_characters table*/
INSERT INTO fictional_characters (character_name, appearance, book_id) VALUES
("Jon Snow", "Game of Thrones", 4),
("Daenerys Targaryen", "Game of Thrones", 4),
("LIttlefinger", "Game of Thrones",4),
("Tintin", "The Adventures of Tintin", 6);

-- Query the table fictional character
SELECT * FROM fictional_characters;


# QUESTIONS
# 1. Which fictional characters are found in Game of Thrones?
SELECT character_name
FROM fictional_characters
WHERE appearance = "Game of Thrones";

# 2. What movies are the actors in?
SELECT fp.name AS actor, m.title AS movie
FROM famous_people fp
JOIN movies m ON fp.id = m.actor_id
WHERE fp.profession = "Actor";

# 3. What songs did Sarkodie write?
SELECT fp.name AS musician, s.title AS song
FROM famous_people fp
JOIN songs s ON fp.id = s.musician_id
WHERE fp.name = "Sarkodie";

# 4. What books did Priscilla Shirer write?
SELECT fp.name AS author, b.title AS book
FROM famous_people fp
JOIN books b ON fp.id = b.author_id
WHERE fp.name = "Priscilla Shirer"





