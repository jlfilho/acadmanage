-- Populando a tabela Categoria
INSERT INTO categoria (id, nome) VALUES 
(1, 'Ensino'),
(2, 'Pesquisa'),
(3, 'Extensão'),
(4, 'Visita Técnica'),
(5, 'Aula Prática Externa'),
(6, 'Aula de Laboratório');

-- Populando a tabela Curso
INSERT INTO curso (id, nome) VALUES
(1, 'Curso de Engenharia de Software'),
(2, 'Curso de Sistemas de Informação'),
(3, 'Curso de Ciência da Computação');

-- Populando a tabela Fonte Financiadora
INSERT INTO fonte_financiadora (id, nome) VALUES 
(1, 'UEA'),
(2, 'FAPEAM'),
(3, 'CAPES'),
(4, 'CNPq'),
(5, 'Outros');

-- Populando a tabela Role
INSERT INTO role (id, nome) VALUES
(1, 'ROLE_ADMINISTRADOR'),
(2, 'ROLE_GERENTE'),
(3, 'ROLE_SECRETARIO');

-- Script SQL para criar 10 pessoas na tabela Pessoa

INSERT INTO pessoa (id, nome, cpf) VALUES
(1, 'João Silva', '12345678901'),
(2, 'Maria Oliveira', '23456789012'),
(3, 'Carlos Souza', '34567890123'),
(4, 'Ana Paula', '45678901234'),
(5, 'Pedro Henrique', '56789012345'),
(6, 'Juliana Costa', '67890123456'),
(7, 'Fernando Lima', '78901234567'),
(8, 'Camila Almeida', '89012345678'),
(9, 'Lucas Martins', '90123456789'),
(10, 'Beatriz Santos', '01234567890');

-- Populando a tabela Usuario com níveis de acesso e senhas criptografadas
INSERT INTO usuario (id, email, senha, pessoa_id) VALUES
(1, 'admin@uea.edu.br', '$2a$10$Ebmi/uPZlhTEB7e39gsPTOfADOsL0IdEcEQllZyogM/WI/WKUMYdW', 1), -- Senha: admin123
(2, 'gerente1@uea.edu.br', '$2a$10$84EaPNF6J.4tAMWF8TrNduVFf7XOuUKJ8OmPMLbUR3vq3FiZilSk2', 2), -- Senha: gerente123
(3, 'gerente2@uea.edu.br', '$2a$10$84EaPNF6J.4tAMWF8TrNduVFf7XOuUKJ8OmPMLbUR3vq3FiZilSk2', 3), -- Senha: gerente123
(4, 'gerente3@uea.edu.br', '$2a$10$84EaPNF6J.4tAMWF8TrNduVFf7XOuUKJ8OmPMLbUR3vq3FiZilSk2', 4), -- Senha: gerente123
(5, 'secretario1@uea.edu.br', '$2a$10$X6ex54jciqS6vBx2agfhweVqN730u0R3BLD8wCP21ljBEfN2jZIW.', 5), -- Senha: secretario123
(6, 'secretario2@uea.edu.br', '$2a$10$X6ex54jciqS6vBx2agfhweVqN730u0R3BLD8wCP21ljBEfN2jZIW.', 6), -- Senha: secretario123
(7, 'secretario3@uea.edu.br', '$2a$10$X6ex54jciqS6vBx2agfhweVqN730u0R3BLD8wCP21ljBEfN2jZIW.', 7), -- Senha: secretario123
(8, 'jlfilho@uea.edu.br', '$2a$10$X6ex54jciqS6vBx2agfhweVqN730u0R3BLD8wCP21ljBEfN2jZIW.', 8); -- Senha: secretario123



-- Populando a tabela Usuario_Roles para associar usuários a roles
INSERT INTO usuario_roles (usuario_id, role_id) VALUES
(1, 1), -- Admin
(2, 2), -- Gerente Software
(3, 2), -- Gerente Sistemas
(4, 2), -- Gerente Ciência
(5, 3), -- Secretário Software
(6, 3), -- Secretário Sistemas
(7, 3), -- Secretário Ciência
(8, 1); -- Admin

-- Populando a tabela CURSO_USUARIO
-- O administrador tem acesso a todos os cursos
INSERT INTO curso_usuario (curso_id, usuario_id) VALUES
(1, 1), -- Administrador no Curso de Engenharia de Software
(2, 1), -- Administrador no Curso de Sistemas de Informação
(3, 1), -- Administrador no Curso de Ciência da Computação

-- O administrador tem acesso a todos os cursos
(1, 8), -- Administrador no Curso de Engenharia de Software
(2, 8), -- Administrador no Curso de Sistemas de Informação
(3, 8), -- Administrador no Curso de Ciência da Computação

-- Gerentes associados aos cursos
(1, 2), -- Gerente do Curso de Engenharia de Software
(2, 3), -- Gerente do Curso de Sistemas de Informação
(3, 4), -- Gerente do Curso de Ciência da Computação

-- Secretários associados aos cursos
(1, 5), -- Secretário do Curso de Engenharia de Software
(2, 6), -- Secretário do Curso de Sistemas de Informação
(3, 7); -- Secretário do Curso de Ciência da Computação

-- Populando a tabela Atividade com a data de realização
INSERT INTO atividade (id, nome, objetivo, publico_alvo, status_publicacao, data_realizacao, categoria_id, curso_id) VALUES
(1, 'Atividade 1 Engenharia', 'Objetivo 1', 'Estudantes', TRUE, '2023-01-15', 1, 1),
(2, 'Atividade 2 Engenharia', 'Objetivo 2', 'Estudantes', TRUE, '2023-02-20', 2, 1),
(3, 'Atividade 3 Engenharia', 'Objetivo 3', 'Estudantes', TRUE, '2023-03-10', 3, 1),
(4, 'Atividade 4 Engenharia', 'Objetivo 4', 'Estudantes', FALSE, '2023-04-05', 4, 1),
(5, 'Atividade 5 Engenharia', 'Objetivo 5', 'Estudantes', FALSE, '2023-05-18', 5, 1),
(6, 'Atividade 1 Sistemas', 'Objetivo 1', 'Estudantes', TRUE, '2023-06-12', 1, 2),
(7, 'Atividade 2 Sistemas', 'Objetivo 2', 'Estudantes', TRUE, '2023-07-08', 2, 2),
(8, 'Atividade 3 Sistemas', 'Objetivo 3', 'Estudantes', TRUE, '2023-08-22', 3, 2),
(9, 'Atividade 4 Sistemas', 'Objetivo 4', 'Estudantes', FALSE, '2023-09-15', 4, 2),
(10, 'Atividade 5 Sistemas', 'Objetivo 5', 'Estudantes', FALSE, '2023-10-30', 5, 2),
(11, 'Atividade 1 Ciência', 'Objetivo 1', 'Estudantes', TRUE, '2023-11-05', 1, 3),
(12, 'Atividade 2 Ciência', 'Objetivo 2', 'Estudantes', TRUE, '2023-12-15', 2, 3),
(13, 'Atividade 3 Ciência', 'Objetivo 3', 'Estudantes', TRUE, '2024-01-10', 3, 3),
(14, 'Atividade 4 Ciência', 'Objetivo 4', 'Estudantes', FALSE, '2024-02-20', 4, 3),
(15, 'Atividade 5 Ciência', 'Objetivo 5', 'Estudantes', FALSE, '2024-03-25', 5, 3);

-- Associar atividades a pessoas com seus respectivos papéis
-- Cada atividade terá um coordenador e um bolsista ou voluntário
INSERT INTO atividade_pessoa_papel (atividade_id, pessoa_id, papel)
VALUES
    (1, 1, 'COORDENADOR'),
    (1, 3, 'BOLSISTA'),
    (2, 2, 'COORDENADOR'),
    (2, 4, 'VOLUNTARIO'),
    (3, 3, 'COORDENADOR'),
    (3, 5, 'BOLSISTA'),
    (4, 4, 'COORDENADOR'),
    (4, 6, 'VOLUNTARIO'),
    (5, 5, 'COORDENADOR'),
    (5, 7, 'BOLSISTA'),
    (6, 6, 'COORDENADOR'),
    (6, 1, 'VOLUNTARIO'),
    (7, 7, 'COORDENADOR'),
    (7, 2, 'BOLSISTA'),
    (8, 1, 'COORDENADOR'),
    (8, 3, 'VOLUNTARIO'),
    (9, 2, 'COORDENADOR'),
    (9, 4, 'BOLSISTA'),
    (10, 3, 'COORDENADOR'),
    (10, 5, 'VOLUNTARIO'),
    (11, 4, 'COORDENADOR'),
    (11, 6, 'BOLSISTA'),
    (12, 5, 'COORDENADOR'),
    (12, 7, 'VOLUNTARIO'),
    (13, 6, 'COORDENADOR'),
    (13, 1, 'BOLSISTA'),
    (14, 7, 'COORDENADOR'),
    (14, 2, 'VOLUNTARIO'),
    (15, 1, 'COORDENADOR'),
    (15, 3, 'BOLSISTA');

-- Populando a tabela Evidencia
INSERT INTO evidencia (id, url_foto, legenda, criado_por, atividade_id) VALUES
(1, 'foto1.jpg', 'Legenda 1', 'admin', 1),
(2, 'foto2.jpg', 'Legenda 2','admin', 1),
(3, 'foto3.jpg', 'Legenda 3','admin', 1),
(4, 'foto4.jpg', 'Legenda 4','admin', 1),
(5, 'foto5.jpg', 'Legenda 5','admin', 1),
(6, 'foto6.jpg', 'Legenda 1','admin', 2),
(7, 'foto7.jpg', 'Legenda 2','admin', 2),
(8, 'foto8.jpg', 'Legenda 3','admin', 2),
(9, 'foto9.jpg', 'Legenda 4','admin', 2),
(10, 'foto10.jpg', 'Legenda 5','admin', 2),
-- Repita para cada atividade
(11, 'foto11.jpg', 'Legenda 1','admin', 3),
(12, 'foto12.jpg', 'Legenda 2','admin', 3),
(13, 'foto13.jpg', 'Legenda 3','admin', 3),
(14, 'foto14.jpg', 'Legenda 4','admin', 3),
(15, 'foto15.jpg', 'Legenda 5','admin', 3);

