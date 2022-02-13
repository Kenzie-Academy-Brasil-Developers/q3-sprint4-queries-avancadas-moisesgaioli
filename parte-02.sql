INSERT INTO 
    enderecos(rua, pais, cidade) 
VALUES
    ('Avenida Higienópolis', 'Brasil', 'Londrina'),
    ('Avenida Paulista', 'Brasil', 'São Paulo'),
    ('Rua Marcelino Champagnat', 'Brasil', 'Curitiba');


INSERT INTO
    usuarios(nome, email, senha, endereco_id)
VALUES
    ('Cauan', 'cauan@exemple.com', '1234', (SELECT endereco_id FROM enderecos WHERE rua ILIKE '%Paulista%', AND cidade LIKE 'São Paulo')),
    ('Chrystian', 'chrystian@exemple.com', '4321', (SELECT endereco_id FROM enderecos WHERE rua ILIKE '%Marcelino%', AND cidade LIKE 'Curitiba')),
    ('Matheus', 'matheus@exemple.com', '3214', (SELECT endereco_id FROM enderecos WHERE rua ILIKE '%Higienópolis%', AND cidade LIKE 'Londrina'));


INSERT INTO
    redes_sociais(nome)
VALUES
    ('Youtube'),
    ('Twitter'),
    ('Instagram'),
    ('Facebook'),
    ('TikTok');


INSERT INTO
    usuario_rede_sociais(usuario_id, rede_social_id)
VALUES
    ((SELECT usuario_id FROM usuarios WHERE nome LIKE 'Cauan'), (SELECT rede_social_id FROM redes_sociais WHERE nome LIKE 'Youtube')),
    ((SELECT usuario_id FROM usuarios WHERE nome LIKE 'Chrystian'), (SELECT rede_social_id FROM redes_sociais WHERE nome LIKE 'Youtube')),
    ((SELECT usuario_id FROM usuarios WHERE nome LIKE 'Matheus'), (SELECT rede_social_id FROM redes_sociais WHERE nome LIKE 'Youtube')),
    ((SELECT usuario_id FROM usuarios WHERE nome LIKE 'Cauan'), (SELECT rede_social_id FROM redes_sociais WHERE nome LIKE 'Instagram')),
    ((SELECT usuario_id FROM usuarios WHERE nome LIKE 'Chrystian'), (SELECT rede_social_id FROM redes_sociais WHERE nome LIKE 'Instagram')),
    ((SELECT usuario_id FROM usuarios WHERE nome LIKE 'Matheus'), (SELECT rede_social_id FROM redes_sociais WHERE nome LIKE 'Instagram')),
    ((SELECT usuario_id FROM usuarios WHERE nome LIKE 'Cauan'), (SELECT rede_social_id FROM redes_sociais WHERE nome LIKE 'Twitter')),
    ((SELECT usuario_id FROM usuarios WHERE nome LIKE 'Chrystian'), (SELECT rede_social_id FROM redes_sociais WHERE nome LIKE 'Twitter')),
    ((SELECT usuario_id FROM usuarios WHERE nome LIKE 'Matheus'), (SELECT rede_social_id FROM redes_sociais WHERE nome LIKE 'Twitter')),
    ((SELECT usuario_id FROM usuarios WHERE nome LIKE 'Cauan'), (SELECT rede_social_id FROM redes_sociais WHERE nome LIKE 'Facebook')),
    ((SELECT usuario_id FROM usuarios WHERE nome LIKE 'Chrystian'), (SELECT rede_social_id FROM redes_sociais WHERE nome LIKE 'Facebook')),
    ((SELECT usuario_id FROM usuarios WHERE nome LIKE 'Matheus'), (SELECT rede_social_id FROM redes_sociais WHERE nome LIKE 'Facebook')),
    ((SELECT usuario_id FROM usuarios WHERE nome LIKE 'Cauan'), (SELECT rede_social_id FROM redes_sociais WHERE nome LIKE 'TikTok')),
    ((SELECT usuario_id FROM usuarios WHERE nome LIKE 'Chrystian'), (SELECT rede_social_id FROM redes_sociais WHERE nome LIKE 'TikTok')),
    ((SELECT usuario_id FROM usuarios WHERE nome LIKE 'Matheus'), (SELECT rede_social_id FROM redes_sociais WHERE nome LIKE 'TikTok'));
    