SELECT Nome, Ano FROM Filmes;

SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano;

SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta Para o Futuro';

SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997;

SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000;

SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao;

SELECT Ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY Ano DESC;

SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M';

SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

SELECT Nome, Genero
FROM Filmes F
JOIN FilmesGenero FG ON f.Id = FG.IdFilme
JOIN Generos G ON G.Id = FG.IdGenero;

SELECT Nome, Genero
FROM Filmes F
JOIN FilmesGenero FG ON f.Id = FG.IdFilme
JOIN Generos G ON G.Id = FG.IdGenero
WHERE Genero = 'Mistério';

SELECT Nome, PrimeiroNome, UltimoNome, Papel
FROM Filmes F
JOIN ElencoFilme E ON f.Id = E.IdFilme
JOIN Atores A ON A.Id = E.IdAtor;