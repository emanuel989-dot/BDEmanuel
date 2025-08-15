INSERT INTO diretores (nome, nacionalidade) VALUES
('Quentin Tarantino', 'Americano'),
('Christopher Nolan', 'Britânico'),
('Greta Gerwig', 'Americana'),
('Hayao Miyazaki', 'Japonês');

INSERT INTO generos (nome) VALUES
('Ação'),
('Drama'),
('Fantasia'),
('Comédia'),
('Ficção Científica'),
('Animação');

INSERT INTO filmes (titulo, ano_lancamento, sinopse, id_diretor, id_genero) VALUES
('Pulp Fiction', 1994, 'A vida de dois assassinos de aluguel, um boxeador, um gângster e sua esposa se entrelaçam.', 
    (SELECT id FROM diretores WHERE nome = 'Quentin Tarantino'), 
    (SELECT id FROM generos WHERE nome = 'Ação')),
('Inception', 2010, 'Um ladrão que rouba segredos corporativos através de tecnologia de compartilhamento de sonhos é encarregado de uma tarefa impossível: a iniciação.', 
    (SELECT id FROM diretores WHERE nome = 'Christopher Nolan'), 
    (SELECT id FROM generos WHERE nome = 'Ficção Científica')),
('Oppenheimer', 2023, 'A história do físico J. Robert Oppenheimer e seu papel no desenvolvimento da bomba atômica.', 
    (SELECT id FROM diretores WHERE nome = 'Christopher Nolan'), 
    (SELECT id FROM generos WHERE nome = 'Drama')),
('Barbie', 2023, 'Barbie e Ken embarcam em uma jornada de autodescoberta após serem exilados do mundo perfeito da Barbielândia.', 
    (SELECT id FROM diretores WHERE nome = 'Greta Gerwig'), 
    (SELECT id FROM generos WHERE nome = 'Comédia')),
('A Viagem de Chihiro', 2001, 'Uma garota de 10 anos se perde em um mundo espiritual, onde os humanos são transformados em porcos.', 
    (SELECT id FROM diretores WHERE nome = 'Hayao Miyazaki'), 
    (SELECT id FROM generos WHERE nome = 'Animação')),
('Interestelar', 2014, 'Uma equipe de exploradores viaja através de um buraco de minhoca em uma tentativa de garantir a sobrevivência da humanidade.', 
    (SELECT id FROM diretores WHERE nome = 'Christopher Nolan'), 
    (SELECT id FROM generos WHERE nome = 'Ficção Científica'));
