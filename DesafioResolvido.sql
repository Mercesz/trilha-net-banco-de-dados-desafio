-- 1 - Buscando o Nome e anos dos filmes
SELECT Nome, Ano FROM Filmes

--2 - Buscando o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT 
	Nome, Ano, Duracao 
FROM Filmes
ORDER By Ano ASC

--3 - Buscando pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT
	Nome, Ano, Duracao
FROM Filmes 
Where Nome='De Volta para o Futuro'

-- 4 - Buscando os filmes lançados em 1997
SELECT
	Nome, Ano, Duracao
 FROM Filmes
 WHERE Ano = 1997

 -- 5 - Buscando os filmes lançados APÓS o ano 2000
 SELECT
	Nome, Ano, Duracao
FROM Filmes
WHERE Ano >= 2000

-- 6- Buscando os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT 
	Nome, Ano, Duracao
FROM Filmes
WHERE Duracao >100 AND Duracao < 150
ORDER BY Duracao ASC

-- 7 - Buscando a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT 
    Ano,
    COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY COUNT(*) DESC;

-- 8 - Buscando os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT 
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M'

-- 9 - Buscando os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT 
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER By PrimeiroNome ASC

-- 10 - Buscando o nome do filme e o gênero
SELECT 
	f.Nome AS Nome,
	g.Genero AS Genero
FROM FilmesGenero fg
INNER JOIN Generos g on fg.IdGenero = g.Id
INNER JOIN Filmes f on fg.IdFilme = f.Id

-- 11 - Buscando o nome do filme e o gênero do tipo "Mistério"
SELECT
	Filmes.Nome AS Nome,
	Generos.Genero AS Genero
From FilmesGenero
INNER JOIN Generos on FilmesGenero.IdGenero = Generos.Id
INNER JOIN Filmes on Filmesgenero.IdFilme = Filmes.Id
WHERE Genero = 'Mistério'

-- 12 - Buscando o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT
	f.Nome AS Nome,
	a.PrimeiroNome AS PrimeiroNome,
	a.UltimoNome AS UltimoNome,
	ef.Papel
From ElencoFilme ef
INNER JOIN Filmes f on ef.IdFilme = f.Id
INNER JOIN Atores a on ef.IdAtor = a.Id

