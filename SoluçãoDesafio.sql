/* Trilha Introdu��o a Banco de Dados - DIO */

/*1- Buscar o nome e ano dos filmes */
SELECT Nome, Ano FROM Filmes

/*2- Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano */
SELECT Nome, Ano FROM Filmes ORDER BY Ano

/*3- Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o */
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'

/*4- Buscar os filmes lan�ados em 1997 */
SELECT Nome, Ano FROM Filmes WHERE Ano = 1997

/*5- Buscar os filmes lan�ados AP�S o ano 2000 */
SELECT Nome, Ano FROM Filmes WHERE Ano > 2000

/*6- Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente */
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 and Duracao < 150 ORDER BY Duracao

/*7- Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela quantidade em ordem decrescente */
SELECT Ano,COUNT(Nome) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

/*8- Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome */
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M'

/*9- Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome */
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

/*10- Buscar o nome do filme e o g�nero */
SELECT f.Nome, g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id

/*11- Buscar o nome do filme e o g�nero do tipo "Mist�rio" */
SELECT f.Nome, g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mist�rio'

/*12- Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel */
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, e.Papel
From Filmes f
INNER JOIN ElencoFilme e ON f.Id = e.IdFilme
INNER JOIN Atores a ON a.Id = e.Id