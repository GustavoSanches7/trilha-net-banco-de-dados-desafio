-- Query 1 
SELECT 
	Nome,
	Ano
FROM Filmes

-- Query 2
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano ASC

-- Query 3 
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- Query 4
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = '1997'

-- Query 5 
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > '2000'

-- Query 6
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > '100' AND Duracao < '150'
ORDER BY Duracao ASC

-- Query 7
SELECT 
	Ano,
	COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- Query 8
SELECT *
FROM Atores
WHERE Genero = 'M'

-- Query 9 
SELECT *
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- Query 10
SELECT 
	F.Nome,
	G.Genero
FROM Filmes AS F
INNER JOIN FilmesGenero AS FG
	ON F.Id = FG.IdFilme
INNER JOIN Generos AS G
	ON G.Id = FG.IdGenero

-- Query 11
SELECT 
	F.Nome,
	G.Genero
FROM FILMES AS F
INNER JOIN FilmesGenero AS FG
	ON F.Id = FG.IdFilme
INNER JOIN Generos AS G
	ON G.Id = FG.IdGenero
WHERE G.Genero = 'Mistério'

-- Query 12
SELECT 
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	EF.Papel
FROM Filmes AS F
INNER JOIN ElencoFilme AS EF
	ON F.Id = EF.IdFilme
INNER JOIN Atores AS A
	ON A.Id = EF.IdAtor