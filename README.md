# Famous People SQL Project
## Project Overview
In this project, a relational database has been created to store and query data related to famous people. The goal of the project is to create multiple tables representing famous people from different professions, such as actors, musicians, authors, and fictional characters, and then use joins to link these tables together. The database provides insights into what movies, songs, and books these people are involved with, as well as relationships between fictional characters in books.

## Database: celebs
The project uses a database called celebs, which contains the following tables:
- famous_people: A table storing basic information about famous people, including their names and professions.
- movies: A table linking actors to the movies they’ve been in.
- songs: A table linking musicians to the songs they’ve written.
- books: A table linking authors to the books they’ve written.
- fictional_characters: A table linking characters to books they appear in.

## SQL Schema
### 1. Create Database
   
CREATE DATABASE celebs;
USE celebs;

### 3. Table Definitions
- famous_people
Stores basic details about famous people.

CREATE TABLE famous_people 
    (id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    profession VARCHAR(50) NOT NULL);

- movies
Links actors to the movies they appear in.

CREATE TABLE movies 
    (id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    actor_id INT,
    FOREIGN KEY (actor_id) REFERENCES famous_people(id));

- songs
Links musicians to the songs they have written.

CREATE TABLE songs 
    (id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    musician_id INT,
    FOREIGN KEY (musician_id) REFERENCES famous_people(id));

- books
Links authors to the books they have written.

CREATE TABLE books 
    (id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES famous_people(id));

- fictional_characters
Links fictional characters to the books in which they appear.

CREATE TABLE fictional_characters 
    (id INT PRIMARY KEY AUTO_INCREMENT,
    character_name VARCHAR(100) NOT NULL,
    appearance VARCHAR(255),
    book_id INT,
    FOREIGN KEY (book_id) REFERENCES books(id));

## Data Insertion
The following sample data has been inserted into each table:

- famous_people

Example: "Nana Kwame Bediako" (Entrepreneur), "Sarkodie" (Musician), "Denzel Washington" (Actor), etc.

- movies

Example: "The Great Debators" (Actor: Denzel Washington), "Man on Fire" (Actor: Denzel Washington), etc.

- songs

Example: "Otan" (Musician: Sarkodie), "Revenge of the Spartans" (Musician: Sarkodie), etc.

- books

Example: "God is Able" (Author: Priscilla Shirer), "The Prince Warriors" (Author: Priscilla Shirer), etc.

- fictional_characters

Example: "Jon Snow" (Book: Game of Thrones), "Tintin" (Book: The Adventures of Tintin), etc.

## Example Queries
- Which fictional characters are found in Game of Thrones?

sql code:
SELECT character_name
FROM fictional_characters
WHERE appearance = "Game of Thrones";

- What movies are the actors in?

sql code:
SELECT fp.name AS actor, m.title AS movie
FROM famous_people fp
JOIN movies m ON fp.id = m.actor_id
WHERE fp.profession = "Actor";

- What songs did Sarkodie write?

sql code: 
SELECT fp.name AS musician, s.title AS song
FROM famous_people fp
JOIN songs s ON fp.id = s.musician_id
WHERE fp.name = "Sarkodie";

- What books did Priscilla Shirer write?

sql code:
SELECT fp.name AS author, b.title AS book
FROM famous_people fp
JOIN books b ON fp.id = b.author_id
WHERE fp.name = "Priscilla Shirer";
