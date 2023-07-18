-- question 1
select count(last_name) 
from actor
where last_name like 'Wahlberg';
-- 2 names

-- question 2
select count(amount)
from payment
where amount > 3.99 and amount < 5.99;
-- 3

-- question 3
select film_id, count(film_id)
from inventory
group by film_id 
order by count desc;
-- many films have a count of 8 in the inventory

-- question 4
select last_name, count(last_name)
from customer
where last_name like 'William_%'
group by last_name
order by count desc;
-- none with 'William' one with Williams one with Williamson

-- question 5
select staff_id, count(staff_id)
from rental
group by staff_id
order by count desc;
-- employee 1 8040 sales

-- question 6
select count(distinct district)
from address;
-- 378

-- question 7
select film_id, count(actor_id)
from film_actor
group by film_id
order by count desc;
-- film 508, 'Lambs Cincinatti' 15 actors

-- question 8
select store_id, count(last_name)
from customer
where last_name like '_%es'
group by store_id;
-- 13 names

-- question 9
select customer_id, amount, count(distinct amount)
from payment
where customer_id > 380 and customer_id < 430
group by amount, customer_id 
having count(distinct amount) > 250; 
-- none

-- question 10
select count(distinct rating)
from film
-- 5 ratings

select rating, count(rating)
from film
group by rating
-- PG-13 had the most movies - 223


