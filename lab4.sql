select 
  count(*) as total_count, 
  sum(book_price) as total_price, 
  avg(book_price) as average_price, 
  min(book_price) as min_price, 
  max(book_price) as max_price 
from 
  books;
select 
  count(*) as total_count 
from 
  books 
where 
  book_price != 0;
select 
  count(*) as total_count, 
  sum(book_price) as total_price, 
  avg(book_price) as average_price, 
  min(book_price) as min_price, 
  max(book_price) as max_price 
from 
  books 
group by 
  book_novelty;
select 
  year(book_date) as book_year, 
  count(*) as total_count, 
  sum(book_price) as total_price, 
  avg(book_price) as average_price, 
  min(book_price) as min_price, 
  max(book_price) as max_price 
from 
  books 
group by 
  year(book_date);
select 
  year(book_date) as book_year, 
  count(*) as total_count, 
  sum(book_price) as total_price, 
  avg(book_price) as average_price, 
  min(book_price) as min_price, 
  max(book_price) as max_price 
from 
  books 
where 
  book_price not between 10 
  and 20 
group by 
  year(book_date);
select 
  year(book_date) as book_year, 
  count(*) as total_count, 
  sum(book_price) as total_price, 
  avg(book_price) as average_price, 
  min(book_price) as min_price, 
  max(book_price) as max_price 
from 
  books 
group by 
  year(book_date) 
order by 
  total_count desc;
select 
  count(book_item) as total_items, 
  count(distinct book_item) as total_unique_items 
from 
  books;
select 
  substring(book_name, 1, 1) as first_letter, 
  count(*) as total_number, 
  sum(book_price) as total_price 
from 
  books 
group by 
  first_letter;
select 
  substring(book_name, 1, 1) as first_letter, 
  count(*) as total_number, 
  sum(book_price) as total_price 
from 
  books 
where 
  substring(book_name, 1, 1) not regexp '^[0-9]' 
  and substring(book_name, 1, 1) not regexp '^[a-z]' 
group by 
  first_letter;
select 
  substring(book_name, 1, 1) as first_letter, 
  count(*) as total_number, 
  sum(book_price) as total_price 
from 
  books 
where 
  substring(book_name, 1, 1) not regexp '^[0-9]' 
  and substring(book_name, 1, 1) not regexp '^[a-z]' 
  and year(book_date) > 2000 
group by 
  first_letter;
select 
  substring(book_name, 1, 1) as first_letter, 
  count(*) as total_number, 
  sum(book_price) as total_price 
from 
  books 
where 
  substring(book_name, 1, 1) not regexp '^[0-9]' 
  and substring(book_name, 1, 1) not regexp '^[a-z]' 
  and year(book_date) > 2000 
group by 
  first_letter 
order by 
  first_letter desc;
select 
  year(book_date) as book_year, 
  month(book_date) as book_month, 
  count(*) as total_count, 
  sum(book_price) as total_price, 
  avg(book_price) as average_price, 
  min(book_price) as min_price, 
  max(book_price) as max_price 
from 
  books 
group by 
  book_year, 
  book_month;
select 
  year(book_date) as book_year, 
  month(book_date) as book_month, 
  count(*) as total_count, 
  sum(book_price) as total_price, 
  avg(book_price) as average_price, 
  min(book_price) as min_price, 
  max(book_price) as max_price 
from 
  books 
where 
  book_date is not null 
group by 
  book_year, 
  book_month;
select 
  year(book_date) as book_year, 
  month(book_date) as book_month, 
  count(*) as total_count, 
  sum(book_price) as total_price, 
  avg(book_price) as average_price, 
  min(book_price) as min_price, 
  max(book_price) as max_price 
from 
  books 
where 
  book_date is not null 
group by 
  book_year, 
  book_month 
order by 
  book_year desc, 
  book_month asc;
select 
  book_novelty, 
  sum(book_price) as total_price_dollars, 
  sum(book_price * 29.33) as total_price_hryvnas, 
  sum(book_price * 0.91) as total_price_euro, 
  sum(book_price * 107) as total_price_rubles 
from 
  books 
group by 
  book_novelty;
select 
  book_novelty, 
  round(
    sum(book_price)
  ) as total_price_dollars, 
  round(
    sum(book_price * 29.33)
  ) as total_price_hryvnas, 
  round(
    sum(book_price * 0.91)
  ) as total_price_euro, 
  round(
    sum(book_price * 107)
  ) as total_price_rubles 
from 
  books 
group by 
  book_novelty;
select 
  book_publisher, 
  count(*) as total_count, 
  sum(book_price) as total_price, 
  avg(book_price) as average_price, 
  min(book_price) as min_price, 
  max(book_price) as max_price 
from 
  books 
group by 
  book_publisher;
select 
  book_theme, 
  book_publisher, 
  count(*) as total_count, 
  sum(book_price) as total_price, 
  avg(book_price) as average_price, 
  min(book_price) as min_price, 
  max(book_price) as max_price 
from 
  books 
group by 
  book_publisher, 
  book_theme 
order by 
  book_publisher;
select 
  book_category, 
  book_theme, 
  book_publisher, 
  count(*) as total_count, 
  sum(book_price) as total_price, 
  avg(book_price) as average_price, 
  min(book_price) as min_price, 
  max(book_price) as max_price 
from 
  books 
group by 
  book_publisher 
order by 
  book_publisher, 
  book_theme, 
  book_category;
select 
  book_publisher, 
  round(
    (
      (book_price * 29.33)/ book_pages
    )* 100
  ) as price_for_page_kop 
from 
  books 
where 
  round(
    (
      (book_price * 29.33)/ book_pages
    )* 100
  ) > 10;
