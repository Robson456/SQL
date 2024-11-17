create table Author (
Id int not null auto_increment primary key, 
Name varchar(255), 
Surename varchar(255)
);

alter table books_scraped add Author_id int;
alter table books_scraped add FOREIGN KEY (Author_id) REFERENCES author(id); 

select * from books_scraped;
select * from author;

insert into author(Name, Surename) values
('Bertus' ,'Aafjes'),
('Verna', 'Aardema'),
('Chris', 'Abani'),
('Said', 'Achtouk'),
('Milton', 'Acorn')
;

insert into books_scraped(Title, Book_category, Star_rating, Price, Stock, Quantity, Author_id) values('Dance in rain', 'fantasy','five', 22, 'In stock', 43, 1);