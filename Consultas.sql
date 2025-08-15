USE filmes; 

SELECT 
    f.titulo AS filme,
    d.nome AS diretor,
    g.nome AS genero
FROM 
    filmes f
JOIN 
    diretores d ON f.id_diretor = d.id
JOIN 
    generos g ON f.id_genero = g.id;


SELECT 
    f.titulo AS filme,
    f.ano_lancamento
FROM 
    filmes f
JOIN 
    diretores d ON f.id_diretor = d.id
WHERE 
    d.nome = 'Christopher Nolan';
    
SELECT 
    g.nome AS genero,
    COUNT(f.id) AS numero_de_filmes
FROM 
    generos g
LEFT JOIN 
    filmes f ON g.id = f.id_genero
GROUP BY 
    g.nome;
    
(SELECT 
    titulo, 
    ano_lancamento
FROM 
    filmes
ORDER BY 
    ano_lancamento ASC
LIMIT 1)
UNION
(SELECT 
    titulo, 
    ano_lancamento
FROM 
    filmes
ORDER BY 
    ano_lancamento DESC
LIMIT 1);

SELECT 
    d.nome AS diretor,
    COUNT(f.id) AS quantidade_filmes
FROM 
    diretores d
JOIN 
    filmes f ON d.id = f.id_diretor
GROUP BY 
    d.nome
ORDER BY 
    quantidade_filmes DESC;
    
SELECT 
    f.titulo,
    f.ano_lancamento,
    d.nome AS diretor
FROM 
    filmes f
JOIN 
    generos g ON f.id_genero = g.id
JOIN
    diretores d ON f.id_diretor = d.id
WHERE 
    f.ano_lancamento > 2020 AND g.nome = 'Comédia';
