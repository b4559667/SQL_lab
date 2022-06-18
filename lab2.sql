select 
  book_id, 
  book_item, 
  book_novelty, 
  book_name, 
  book_price, 
  book_pages 
from 
  books;
select 
  * 
from 
  books;
select 
  book_item, 
  book_name, 
  book_novelty, 
  book_pages, 
  book_price, 
  book_id 
from 
  books;
select 
  * 
from 
  books 
order by 
  book_id 
limit 
  10;
select 
  * 
from 
  books 
order by 
  book_id 
limit 
  (
    select 
      floor(
        count(*)* 0.1
      ) 
    from 
      books
  );
select 
  distinct book_item 
from 
  books;
select 
  * 
from 
  books 
where 
  book_novelty = "Yes";
select 
  * 
from 
  books 
where 
  book_novelty = "Yes" 
  and book_price between 20 
  and 30;
select 
  * 
from 
  books 
where 
  book_novelty = "Yes" 
  and (
    book_price < 20 
    or book_price > 30
  );
select 
  * 
from 
  books 
where 
  book_date between "2000-01-01" 
  and "2000-02-28";
select 
  * 
from 
  books 
where 
  book_item in (5110, 5141, 4985, 4241);
select 
  * 
from 
  books 
where 
  year(book_date) in (1999, 2001, 2003, 2005);
select 
  * 
from 
  books 
where 
  book_name regexp '^[а-к]';
select 
  * 
from 
  books 
where 
  book_name like "АПП%" 
  and year(book_date) = 2000 
  and book_price < 20;
select 
  * 
from 
  books 
where 
  book_name like "АСС%" 
  and book_name like "%е" 
  and (
    book_date between "2000-01-01" 
    and "2000-01-30"
  );
select 
  * 
from 
  books 
where 
  book_name like "%Microsoft%" 
  and book_name not like "%Windows%";
select 
  * 
from 
  books 
where 
  (
    select 
      char_length(
        regexp_replace(book_name, "[^0-9]+", "")
      )
  ) > 0;
select 
  * 
from 
  books 
where 
  (
    select 
      char_length(
        regexp_replace(book_name, "[^0-9]+", "")
      )
  ) > 2;
select 
  * 
from 
  books 
where 
  (
    select 
      char_length(
        regexp_replace(book_name, "[^0-9]+", "")
      )
  ) = 5;
