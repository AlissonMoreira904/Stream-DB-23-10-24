-- 1 Listar todos os jogos com seus desenvolvedores e gêneros
select desenvolvedor, genero from jogos;

-- 2 Contar quantos usuários existem no sistema
select count(nome) from usuarios;

-- 3 Listar todas as transmissões, incluindo o nome do usuário que as fez
select transmissoes.data_transmissao, usuarios.nome from transmissoes inner join usuarios on transmissoes.id = usuarios.id

-- 4 Encontrar a média de visualizações por transmissão
select avg(visualizacoes) as media_visu from transmissoes;

-- 5 Listar todos os comentários feitos em transmissões específicas, incluindo o nome do jogo
select c.comentario, j.titulo from transmissoes as t inner join comentarios as c on t.id = c.transmissao_id
inner join jogos as j on j.id = t.jogo_id where j.titulo like 'E%';

-- 6 Listar jogos com mais de 500 visualizações em suas transmissões
select jogos.titulo, transmissoes.visualizacoes from jogos inner join transmissoes on jogos.id = transmissoes.id
where transmissoes.visualizacoes > 500;

-- 7 Listar usuários e o número de transmissões que fizeram
 
