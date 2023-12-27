--  MULTI JOIN

SELECT * 
FROM actor
INNER JOIN film_actor
ON actor.actor_id = film_actor.actor_id


SELECT * FROM film_actor

SELECT * 
FROM film_actor
INNER JOIN actor
ON actor.actor_id = film_actor.actor_id

SELECT * from film

SELECT title, fa.film_id
from film_actor as fa
INNER JOIN film
ON fa.film_id = film.film_id

SELECT * from actor

SELECT first_name, last_name, title
FROM film_actor
INNER JOIN actor
ON actor.actor_id = film_actor.actor_id
INNER JOIN film
ON film_actor.film_id = film.film_id

SELECT title, first_name, last_name
from film_actor
INNER JOIN actor
ON actor.actor_id = film_actor.actor_id
INNER JOIN film
ON film_actor.film_id = film.film_id
WHERE title LIKE 'Wo%'
ORDER BY first_name

-- SUB Q
