-- 1
SELECT * FROM enderecos;




-- 2
SELECT e.*, u.*
FROM enderecos AS e
FULL OUTER JOIN usuarios as u
    ON e.id = u.endereco_id
ORDER BY e.id




-- 3
SELECT r.*, u.*
FROM redes_sociais AS r
FULL OUTER JOIN usuario_rede_sociais AS ur
    ON r.id = ur.rede_social_id
FULL OUTER JOIN usuarios AS u
    ON u.id = urs.usuario_id




-- 4
SELECT r.*, u.*, e.*
FROM redes_sociais AS r
FULL OUTER JOIN usuario_rede_sociais AS ur
    ON r.id = ur.rede_social_id
FULL OUTER JOIN usuarios AS u
    ON u.id = ur.usuario_id
FULL OUTER JOIN enderecos AS e
    ON u.endereco_id = e.id




-- 5
SELECT r.nome, u.nome, u.email, e.cidade
FROM redes_sociais AS r
FULL OUTER JOIN usuario_rede_sociais AS ur
    ON r.id = ur.rede_social_id
FULL OUTER JOIN usuarios AS u
    ON u.id = ur.usuario_id
FULL OUTER JOIN enderecos AS e
    ON e.id = u.endereco_id




-- 6
SELECT r.nome, u.nome, u.email, e.cidade
FROM redes_sociais AS r
FULL OUTER JOIN usuario_rede_sociais AS ur
    ON ur.rede_social_id = r.id 
FULL OUTER JOIN usuarios AS u
    ON u.id = ur.usuario_id
FULL OUTER JOIN enderecos AS e
    ON e.id = u.endereco_id
WHERE r.nome LIKE 'Youtube'




-- 7
SELECT r.nome, u.nome, u.email, e.cidade
FROM redes_sociais AS r
FULL OUTER JOIN usuario_rede_sociais AS ur
    ON ur.rede_social_id = r.id 
FULL OUTER JOIN usuarios AS u
    ON u.id = ur.usuario_id
FULL OUTER JOIN enderecos AS e
    ON e.id = u.endereco_id
WHERE r.nome LIKE 'Instagram'




-- 8
SELECT r.nome, u.nome, u.email, e.cidade
FROM redes_sociais AS r
FULL OUTER JOIN usuario_rede_sociais AS ur
    ON ur.rede_social_id = r.id 
FULL OUTER JOIN usuarios AS u
    ON u.id = ur.usuario_id
FULL OUTER JOIN enderecos AS e
    ON e.id = u.endereco_id
WHERE r.nome LIKE 'Facebook'




-- 9
SELECT r.nome, u.nome, u.email, e.cidade
FROM redes_sociais AS r
FULL OUTER JOIN usuario_rede_sociais AS ur
    ON ur.rede_social_id = r.id 
FULL OUTER JOIN usuarios AS u
    ON u.id = ur.usuario_id
FULL OUTER JOIN enderecos AS e
    ON e.id = u.endereco_id
WHERE r.nome LIKE 'TikTok'




-- 10
SELECT r.nome, u.nome, u.email, e.cidade
FROM redes_sociais AS r
FULL OUTER JOIN usuario_rede_sociais AS ur
    ON ur.rede_social_id = r.id 
FULL OUTER JOIN usuarios AS u
    ON u.id = ur.usuario_id
FULL OUTER JOIN enderecos AS e
    ON e.id = u.endereco_id
WHERE r.nome LIKE 'Twitter'