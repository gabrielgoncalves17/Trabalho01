select * from carta where carta.id_carta in (select id_carta from carta_monstro);
select * from usuario where usuario.cod_usr in (select cod_usr from deck);
select * from carta_monstro where carta_monstro.id_tipo_efeito_monstro in (select id_tipo_efeito_monstro from tipo_efeito_monstro);