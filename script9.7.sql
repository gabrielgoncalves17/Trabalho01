select * from carta where id_situacao = 4 group by id_carta;
select * from usuario where sexo = "Feminino" group by email;
select id_carta_monstro,ataque,defesa from carta_monstro where id_tipo = 11 group by ataque;
select carta.nome_carta as nome, tipo.descricao from carta inner join carta_magica inner join tipo on(carta.id_carta = carta_magica.id_carta_magica) where tipo.descricao = "Normal" group by carta.nome_carta;
select carta.nome_carta as nome,carta_monstro.level from carta inner join carta_monstro on(carta.id_carta = carta_monstro.id_carta_monstro) where level = 4 group by carta.nome_carta;