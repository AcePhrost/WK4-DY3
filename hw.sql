-- 1. List all customers who live in Texas (use
-- JOINs)
SELECT customer.first_name, customer.last_name, address.district
FROM customer
INNER JOIN address
ON customer.customer_id = address.address_id
WHERE district LIKE 'Texas%'
-- 5 customers

-- 2. Get all payments above $6.99 with the Customer's Full
-- Name
SELECT payment.amount, customer.first_name, customer.last_name
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id
WHERE amount > 6.99
-- The answer is 35

-- 3. Show all customers names who have made payments over $175(use
-- subqueries)
SELECT payment.amount, customer.first_name, customer.last_name
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id
WHERE amount > 175
-- The answer is 26

-- 4. List all customers that live in Nepal (use the city
-- table)
SELECT customer.first_name, customer.last_name, country.country
FROM customer
INNER join address
ON customer.customer_id = address.address_id
INNER JOIN country
on address.address_id = country.country_id
WHERE country LIKE 'Nepal%'
-- 1 customer

-- 5. Which staff member had the most
-- transactions?
SELECT staff.first_name, staff.last_name, payment.amount
FROM staff
INNER JOIN payment
ON staff.staff_id = payment.payment_id
-- got no data?!?!?

-- 6. How many movies of each rating are
-- there?
SELECT rating, COUNT(rating) 
FROM film
GROUP BY rating
HAVING COUNT(rating) > 1
-- NC-17: 209
-- G: 178
-- PG-13: 224
-- R: 196


-- 7.Show all customers who have made a single payment
-- above $6.99 (Use Subqueries)
SELECT customer.first_name, customer.last_name, payment.amount
from customer
INNER JOIN payment
on customer.customer_id = payment.payment_id
WHERE amount > 6.99
-- no data?!?!?