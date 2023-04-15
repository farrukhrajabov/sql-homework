-- Question 1: How many actors are there with the last name ‘Wahlberg’? - 2 actors
select  COUNT(last_name) 
from  actor 
where  last_name = 'Wahlberg';


-- Question 2: How many payments were made between $3.99 and $5.99? - 0
select  COUNT(amount) 
from payment 
where amount between 3.99 and 5.99;

-- Question 3: What film does the store have the most of? (search in inventory) 
select count(film_id), film_id from inventory group by film_id order by count desc;

-- Question 4: How many customers have the last name ‘William’? - 0
SELECT COUNT(last_name) 
FROM customer 
WHERE last_name = 'William';

-- Question 5: What store employee (get the id) sold the most rentals? - 2
select count(payment_id),
staff_id from payment 
group by staff_id 
order by count desc;

-- Question 6: How many different district names are there? - 378
select COUNT(distinct district) 
from address;

-- Question 7: What film has the most actors in it? (use film_actor table and get film_id) - 508
select count(actor_id), 
film_id from film_actor
group by film_id 
order by count desc
limit 1;

-- Question 8: From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) - 21
select last_name 
from customer 
where last_name like '%es';

-- Question 9: How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers  with ids between 380 and 430? (use group by and having > 250) - None
select amount, COUNT(amount) as total 
from payment 
join rental on payment.rental_id = rental.rental_id 
where payment.amount in (4.99, 5.99) 
and  rental.customer_id between 380 and 430 
group by payment.amount 
HAVING COUNT(amount) > 250;

-- Question 10: Within the film table, how many rating categories are there? And what rating has the most movies total?
select count(film_id), 
rating from film 
group by rating 
order by count desc;

select count(film_id), 
rating from film 
group by rating 
order by count desc 
limit 1;

 







