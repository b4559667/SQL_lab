select 
  book_name, 
  book_price, 
  publisher_name 
from 
  book, 
  publisher 
where 
  book.publisher_id = publisher.publisher_id;
select 
  book_name, 
  category_name 
from 
  book 
  inner join category on category.category_id = book.category_id;
select 
  book_name, 
  book_price, 
  publisher_name, 
  shape_name 
from 
  book 
  join publisher on publisher.publisher_id = book.publisher_id 
  join shape on shape.shape_id = book.shape_id;
select 
  theme_name, 
  category_name, 
  book_name, 
  publisher_name 
from 
  book 
  join theme on theme.theme_id = book.theme_id 
  join category on category.category_id = book.category_id 
  join publisher on publisher.publisher_id = book.publisher_id 
order by 
  theme_name, 
  category_name;
select 
  book_name, 
  publisher_name 
from 
  book 
  join publisher on publisher.publisher_id = book.publisher_id 
where 
  year(book_date) > 2000 
  and publisher_name like "%BHV%";
select 
  sum(book_pages) as all_pages, 
  category_name 
from 
  book 
  join category on category.category_id = book.category_id 
group by 
  category_name 
order by 
  all_pages desc;
select 
  avg(book_price) as avg_price 
from 
  book 
  join theme on theme.theme_id = book.theme_id 
  join category on category.category_id = book.category_id 
where 
  category_name = 'Linux' 
  and theme_name = 'Використання ПК';
select 
  * 
from 
  book, 
  category, 
  publisher, 
  shape, 
  theme 
where 
  book.publisher_id = publisher.publisher_id 
  and theme.theme_id = book.theme_id 
  and category.category_id = book.category_id 
  and shape.shape_id = book.shape_id 
order by 
  book_id;
select 
  * 
from 
  book 
  inner join publisher on book.publisher_id = publisher.publisher_id 
  inner join theme on theme.theme_id = book.theme_id 
  inner join category on category.category_id = book.category_id 
  inner join shape on shape.shape_id = book.shape_id 
order by 
  book_id;
select 
  * 
from 
  book 
  right join publisher on book.publisher_id = publisher.publisher_id 
  right join theme on theme.theme_id = book.theme_id 
  right join category on category.category_id = book.category_id 
  right join shape on shape.shape_id = book.shape_id 
order by 
  book_id;
select 
  b1.book_name, 
  b1.book_pages 
from 
  book as b1, 
  book as b2 
where 
  b1.book_pages = b2.book_pages 
  and b1.book_id != b2.book_id 
order by 
  book_pages;
select 
  distinct b1.book_id, 
  b1.book_name, 
  b1.book_price 
from 
  book as b1, 
  book as b2, 
  book as b3 
where 
  b1.book_price = b2.book_price 
  and b2.book_price = b3.book_price 
  and b3.book_price = b1.book_price 
  and b1.book_id != b2.book_id 
  and b2.book_id != b3.book_id 
  and b3.book_id != b1.book_id 
order by 
  book_price;
select 
  book_name 
from 
  book 
where 
  category_id in (
    select 
      category_id 
    from 
      category 
    where 
      category_name like '%C++%'
  );
select 
  book_name 
from 
  book 
where 
  year(book_date) > 2000 
  and publisher_id in (
    select 
      publisher_id 
    from 
      publisher 
    where 
      publisher_name = 'Видавнича група BHV'
  );
select 
  publisher_name, 
  book_pages 
from 
  book as b 
  join publisher as p on b.publisher_id = p.publisher_id 
where 
  b.publisher_id in (
    select 
      publisher_id 
    from 
      publisher 
    where 
      b.book_pages > 400
  );
select 
  category_name, 
  total_books 
from 
  category, 
  (
    select 
      count(book_name) as total_books, 
      category_id 
    from 
      book 
    group by 
      category_id
  ) as c 
where 
  category.category_id = c.category_id 
  and total_books >= 3;
select 
  book_name 
from 
  book 
where 
  exists (
    select 
      publisher_id 
    from 
      publisher 
    where 
      publisher_name = 'Видавнича група BHV' 
      and publisher.publisher_id = book.publisher_id
  );
select 
  book_name 
from 
  book 
where 
  not exists (
    select 
      publisher_id 
    from 
      publisher 
    where 
      publisher_name != 'Видавнича група BHV' 
      and publisher.publisher_id = book.publisher_id
  );
select 
  theme_name as name 
from 
  theme 
union 
select 
  category_name as name 
from 
  category 
order by 
  name;
select 
  substring_index(book_name, ' ', 1) as name 
from 
  book 
union 
select 
  category_name as name 
from 
  category 
order by 
  name desc;
