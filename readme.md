# Exercitando SQL
Para essas consultas utilizei o banco de dados Sakila

## Consultas
CONSULTA 1 - Todos os filmes com duração até 126

```
SELECT title, length AS duracao
FROM film
WHERE length = 126;
```

CONSULTA 2 - Trocando o nome com AS

```
SELECT title AS titulo_filme, description AS descricao_filme
FROM film;
```

CONSULTA 3 - Encontrando usuários DESATIVADOS

```
SELECT first_name, last_name, email, active 
FROM customer
WHERE active != 1
ORDER BY first_name DESC; 
```

CONSULTA 4 - Selecionar aluguel de um usuário com ID 239
que não é o aluguel com ID 2346

```
SELECT inventory_id, customer_id
FROM rental
WHERE customer_id = 239 AND NOT inventory_id != 2346;
```

CONSULTA 5 - Selecionar o filme onde o replacement_cost
está entre 20 e 25 e ordenar do maior valor para o menor

```
SELECT title, description AS descricao, replacement_cost
FROM film
WHERE replacement_cost BETWEEN 20 AND 25
ORDER BY replacement_cost DESC ;
```

CONSULTA 6 - Filmes com a palavra "DRAMA" na descrição

```
SELECT title, description AS descricao_filme
FROM film
WHERE description LIKE ("%drama%");
```

CONSULTA 7 - Selecionando os nomes com SON como última palavra

```
SELECT first_name, last_name
FROM customer
WHERE last_name REGEXP ("son$");
```

CONSULTA 8 - 3 filmes com a menor duração de aluguel

```
SELECT title, description, rental_duration AS "Duração de aluguel"
FROM film
ORDER BY rental_duration LIMIT 3;
```

CONSULTA 9 - Nome do filme, nome e sobrenome do ator v1

```
SELECT f.title, a.first_name, a.last_name
FROM film AS f
JOIN film_actor AS fa
ON f.film_id = fa.film_id
JOIN actor a
ON fa.film_id = a.actor_id
```

CONSULTA 9.1 - Nome do filme, nome e sobrenome do ator v2

```
SELECT f.title, a.first_name, a.last_name
FROM film AS f
JOIN film_actor AS fa
USING (film_id)
JOIN actor a
USING (actor_id)
```

