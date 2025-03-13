📚 AliNinoDB – Bookstore Management Database
This project contains a SQL Server (MSSQL) based database structure and procedures designed for managing bookstore data, including books, authors, categories, genres, and other related information.

🚀 Key Features
Related Tables:
Books
Authors
Categories
PublishingHouse
Genres
Bindings
Languages
Comments
Stored Procedures:
InsertValues – Adds new data to multiple tables in one query.
InsertComment – Allows customers to add comments for books.
UpdateBook – Updates existing book details.
Triggers:
Prevents actual deletion of records, instead marking them as deleted. Includes triggers for:
Books
Authors
Categories
Comments
PublishingHouse
Genres
Languages
📂 Table Structure
The project includes the following tables:

Categories: Stores book categories.
Authors: Stores author details (name, surname).
PublishingHouse: Stores publishing house information.
Genres: Stores different genres for books.
Bindings: Stores book binding types (e.g., Hardcover, Paperback).
Languages: Stores languages for books.
Books: Contains main details about books, including prices, stock, and relationships with authors, categories, and genres.
BooksAuthors: Many-to-many relationship between books and authors.
BooksGenres: Many-to-many relationship between books and genres.
BooksLanguages: Many-to-many relationship between books and languages.
Comments: Allows users to leave reviews and ratings for books.
🛠️ Database Setup
1. Create Database
To create the AliNinoDB database, run the following SQL command:
CREATE DATABASE AliNinoDB;
USE AliNinoDB;

2. Table Creation
The project uses the CREATE TABLE command to define the structure for all necessary tables. The database schema is ready for use.

3. Sample Stored Procedure - InsertValues
To insert data for books, authors, categories, genres, and other entities, use the following stored procedure:
EXEC dbo.InsertValues 
  @AuthorName ='Ali',
  @AuthorSurname='Safarov',
  @BindingTitle='Soft',
  @BookTitle='Sefiller',
  @BookDescription='good book',
  @BookActualPrice=10,
  @BookDiscountPrice=9,
  @PublishingHouseTitle='AA publish',
  @StockCount=100,
  @ArticleCode='djsddr243f',
  @Pages=210,
  @CategoryTitle='Books',
  @CategoryParentId=NULL,
  @GenreTitle='Drama',
  @BookLanguageTitle='English';

🔄 Triggers
Triggers are used to ensure that records are not actually deleted, but instead marked as deleted, keeping the data intact. The following triggers are created:

DeleteBook
DeleteAuthors
DeleteCategories
DeleteGenres
DeleteLanguages
DeletePublishingHouse
DeleteComments
📄 License
This project is licensed under the MIT License.
