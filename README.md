# Famous People SQL Project
## Project Overview
In this project, a relational database has been created to store and query data related to famous people. The goal of the project is to create multiple tables representing famous people from different professions, such as actors, musicians, authors, and fictional characters, and then use joins to link these tables together. The database provides insights into what movies, songs, and books these people are involved with, as well as relationships between fictional characters in books.

## Database: celebs
The project uses a database called celebs, which contains the following tables:
* famous_people: A table storing basic information about famous people, including their names and professions.
  
* movies: A table linking actors to the movies they’ve been in.
  
* songs: A table linking musicians to the songs they’ve written.
  
* books: A table linking authors to the books they’ve written.
  
* fictional_characters: A table linking characters to books they appear in.

## SQL Schema
### 1. Create Database
![sql1](https://github.com/user-attachments/assets/a0dd871d-da38-426d-bdea-052efe2ba24a)
   

### 3. Table Definitions
* famous_people
Stores basic details about famous people.

![sql1](https://github.com/user-attachments/assets/560e9844-dc81-41b0-aa00-86401dd26e73)

* movies
Links actors to the movies they appear in.

![sql3](https://github.com/user-attachments/assets/3236f417-d7bd-4aec-990a-fae17247b73b)

* songs
Links musicians to the songs they have written.

![sql4](https://github.com/user-attachments/assets/0cbadc15-5359-43d2-b26a-876dc633ed02)

* books
Links authors to the books they have written.

![sql5](https://github.com/user-attachments/assets/efea9200-fc9d-4dac-8804-67326b6495df)

* fictional_characters
Links fictional characters to the books in which they appear.

![sql6](https://github.com/user-attachments/assets/d9224e3c-8c75-4c27-bdaf-bad21887944b)

## Data Insertion
The following sample data has been inserted into each table:

* famous_people

![sql7](https://github.com/user-attachments/assets/dc493833-12ee-4b7a-bea5-243524c257c6)

* movies

![sql8](https://github.com/user-attachments/assets/f76b9211-b33b-471d-9ee3-3fdd1c4bda06)

* songs

![sql9](https://github.com/user-attachments/assets/c4eb8dc2-a51c-4b1b-9e5c-8db7cb48ee9c)

* books

![sql10](https://github.com/user-attachments/assets/277a92ee-f0dd-464f-a4fa-fd7865106099)

* fictional_characters

![sql1](https://github.com/user-attachments/assets/0c677f72-07d9-4b6e-9eee-676a8cf9b6f1)

## Example Queries
* Which fictional characters are found in Game of Thrones?

![sql12](https://github.com/user-attachments/assets/7c69bbd7-2dbf-46e0-bdcb-7b489ca7257b)

* What movies are the actors in?

![sql13](https://github.com/user-attachments/assets/176cd914-2ec9-4c2a-b7b2-31b8113b5f4b)

* What songs did Sarkodie write?

![sql14](https://github.com/user-attachments/assets/01ab6566-088c-4b0d-832e-bdff9ced34f2)

- What books did Priscilla Shirer write?

![sql15](https://github.com/user-attachments/assets/9e71c4c3-2a16-48e9-a666-00388033db7c)
