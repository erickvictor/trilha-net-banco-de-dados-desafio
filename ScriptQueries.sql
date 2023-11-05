SELECT f.Nome, f.Ano  FROM dbo.Filmes f;

SELECT f.Nome, f.Ano, f.Duracao FROM dbo.Filmes f ORDER BY f.Ano; 

SELECT f.Nome, f.Ano, f.Duracao FROM dbo.Filmes f WHERE f.Nome = 'De Volta para o Futuro';

SELECT f.Nome, f.Ano, f.Duracao FROM dbo.Filmes f WHERE f.Ano = '1997';

SELECT f.Nome, f.Ano, f.Duracao FROM dbo.Filmes f WHERE f.Ano >= '2000';

SELECT f.Nome, f.Ano, f.Duracao FROM dbo.Filmes f WHERE f.Duracao > '100' and f.Duracao < '150' ORDER BY f.Duracao;

SELECT f.Ano, COUNT(f.Ano) Quantidade FROM dbo.Filmes f GROUP BY f.Ano ORDER BY Quantidade DESC; 

SELECT * FROM dbo.Atores a WHERE a.Genero = 'M';

SELECT * FROM dbo.Atores a WHERE a.Genero = 'F' ORDER BY a.PrimeiroNome;

SELECT f.Nome, g.Genero FROM dbo.Filmes f INNER JOIN dbo.FilmesGenero fg ON f.Id = fg.IdFilme INNER JOIN dbo.Generos g ON fg.IdGenero = g.Id;

SELECT f.Nome, g.Genero FROM dbo.Filmes f INNER JOIN dbo.FilmesGenero fg ON f.Id = fg.IdFilme INNER JOIN dbo.Generos g ON fg.IdGenero = g.Id WHERE g.Genero = 'Mistério';

SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel  FROM dbo.Atores a INNER JOIN dbo.ElencoFilme ef ON a.Id = ef.IdAtor INNER JOIN dbo.Filmes f ON ef.IdFilme = f.Id;