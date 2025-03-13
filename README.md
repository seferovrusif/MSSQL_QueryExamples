📚 AliNinoDB – Book
This project contains a SQL Server (MSSQL) based database structure and procedures designed for managing bookstore data, including books, authors, categories, and other related information.

🚀 F
📌 Related Tables : Books, Auth
🔄 Stored Procedures : For addin
🎯 Triggers : Prevents actual
🛠️ Optimized Database : BooArticleCode.
📂 Page
This

Categories- Book ca
Authors – Autho
PublishingHouse- Publ
Genres –
Books –
Comments – Book
🛠
📌 Table Creation
The project usesCREATE TABLEcommand

🔄 Stored Procedures
InsertValues- Add
InsertComment- And
UpdateBook- Upda
🚨 Triggers
DeleteBook
DeleteAuthors
DeleteCategories
etc.
Trigg
💡
📌 Create Database
Use the folder

CREATE DATABASE AliNinoDB;
USE AliNinoDB;


📌 Sample Stored Procedure
This is in

EXEC dbo.InsertValues 
  @AuthorName ='Ali',
  @AuthorSurname='Safarov',
  @BindingTitle='Soft',
  @BookTitle='Sefiller',
  @BookDescription='good book',
  @BookActualPrice =10,
  @BookDiscountPrice=9,
  @PublishingHouseTitle ='AA publish',
  @StockCount=100,
  @ArticleCode ='djsddr243f',
  @Pages =210,
  @CategoryTitle='Books',
  @CategoryParentId=Null,
  @GenreTitle='Dram',
  @BookLanguageTitle='Eng'


📄 L
This project is licensed under the MIT License .