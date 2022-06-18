select 
  * 
from 
  books 
where 
  book_price is null 
  or book_price = 0;
select 
  * 
from 
  books 
where 
  book_price is not null 
  and book_circulation is null;
select 
  * 
from 
  books 
where 
  book_date is null;
select 
  * 
from 
  books 
where 
  book_date >= (
    current_date() - interval 1 year
  );
select 
  * 
from 
  books 
where 
  book_novelty = "yes" 
order by 
  book_price asc;
select 
  * 
from 
  books 
where 
  book_pages between 300 
  and 400 
order by 
  book_name desc;
select 
  * 
from 
  books 
where 
  book_price between 20 
  and 40 
order by 
  book_date desc;
select 
  * 
from 
  books 
order by 
  book_name asc, 
  book_price desc;
select 
  * 
from 
  books 
where 
  book_price / book_pages < 0.10;
select 
  char_length(book_name) as name_length, 
  upper(
    substring(book_name, 1, 20)
  ) as book_name20 
from 
  books;
select 
  lower(
    concat(
      substring(book_name, 1, 10), 
      "...", 
      substring(book_name, -10)
    )
  ) 
from 
  books;
select 
  book_name, 
  book_date, 
  day(book_date) as book_day, 
  month(book_date) as book_month, 
  year(book_date) as book_year 
from 
  books;
select 
  book_name, 
  book_date, 
  date_format(book_date, "%d/%m/%Y") as book_date_formatted 
from 
  books;
select 
  book_item, 
  book_price, 
  book_price * 29.33 as book_price_uah, 
  book_price * 0.91 as book_price_euro, 
  book_price * 107 as book_price_rubles 
from 
  books;
select 
  book_item, 
  book_price, 
  floor(book_price * 29.33) as book_price_uah, 
  round(book_price) as book_price_rounded 
from 
  books;
insert into books(
  book_item, book_novelty, book_name, 
  book_price, book_publisher, book_pages, 
  book_format, book_date, book_circulation, 
  book_theme, book_category
) 
values 
  (
    4942, "Yes", "Мова програмування Python. Лекції та вправи", 
    19.00, "Абабагаламага", 
    326, "84х108/16", "2019-02-06", 
    4000, "Програмування", 
    "Python"
  );
insert into books(
  book_item, book_name, book_publisher, 
  book_pages, book_format, book_circulation, 
  book_theme, book_category
) 
values 
  (
    4142, "Мова програмування Kotlin. Лекції та вправи", 
    "Абабагаламага", 226, 
    "84х108/16", 4060, "Програмування", 
    "Kotlin"
  );
delete from 
  books 
where 
  year(book_date) < 1990;
update 
  books 
set 
  book_date = current_date() 
where 
  book_date is null;
SET 
  SQL_SAFE_UPDATES = 0;
update 
  books 
set 
  book_novelty = "Yes" 
where 
  year(book_date) > 2005;
