/* CONSULTA 10 - Somar toda a quantia de pagamento,
e mostrar quantos pagamentos foram realizados. 

SELECT 
COUNT(py.amount) AS quantidade, 
SUM(py.amount) AS "Soma pagamento",
AVG(amount) AS "Média dos valores"
FROM payment AS py; */

/* CONSULTA 11 - Agrupamento de cidades

SELECT COUNT(city_id) AS "Qtd_de_Cidades", c.country AS qtd_cidades
FROM city
JOIN country c
USING(country_id)
GROUP BY(country) */

/* CONSULTA 12 - Agrupar os filmes por categoria

SELECT COUNT(f.film_id) AS "Qtd_filmes", c.name
FROM film AS f
JOIN film_category AS fc
ON f.film_id = fc.film_id
JOIN category AS c
ON fc.category_id = c.category_id
GROUP BY(c.name)*/

/* CONSULTA 13 - Selecionar filmes com o tempo de aluguel acima da média AVG

SELECT title AS "filmes", rental_duration
FROM film
WHERE
	rental_duration > (SELECT AVG(rental_duration) FROM film);
(SELECT AVG(rental_duration) FROM film) */
    
