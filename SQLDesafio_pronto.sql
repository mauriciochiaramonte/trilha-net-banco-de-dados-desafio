-- # Situacao 1
SELECT Nome, Ano FROM Filmes;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT * FROM Filmes ORDER BY Ano;

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
SELECT * FROM Filmes WHERE Nome = 'De Volta para o Futuro';

-- 4 - Buscar os filmes lan�ados em 1997
SELECT * FROM Filmes WHERE Ano = 1997;

-- 5 - Buscar os filmes lan�ados AP�S o ano 2000
SELECT * FROM Filmes WHERE Ano > 2000;

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT * 
FROM Filmes 
WHERE Duracao between 101 and 149 
ORDER BY Duracao asc;

-- 7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) Quantidade FROM Filmes
GROUP BY ANO
ORDER BY Quantidade DESC;

-- 8 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, 
	   UltimoNome, 
	   Genero 
FROM Atores	
WHERE Genero = 'M';

-- 9 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT PrimeiroNome, 
	   UltimoNome, 
	   Genero 
FROM Atores	
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

--10 - Buscar o nome do filme e o g�nero
SELECT F.Nome, 
	   G.Genero	
FROM FilmesGenero as FG
INNER JOIN Filmes as F ON  F.id = FG.IdFilme
INNER JOIN Generos as G ON  G.id = FG.IdGenero


--11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio"
SELECT F.Nome, 
	   G.Genero	
FROM FilmesGenero as FG
INNER JOIN Filmes as F ON  F.id = FG.IdFilme
INNER JOIN Generos as G ON  G.id = FG.IdGenero
WHERE G.Id = 10


--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT F.Nome, 
	   A.PrimeiroNome + ' ' + A.UltimoNome as Nome,
	   EF.Papel
FROM ElencoFilme as EF
INNER JOIN Atores as A ON  A.id = EF.IdAtor
INNER JOIN Filmes as F ON  F.id = EF.IdFilme
