create view carta_monstro_consulta as 
	select nome_carta,carta.descricao,imagem_link,ataque,defesa,level,tipo_efeito_monstro,atributo from carta
    join carta_monstro on(carta_monstro.id_carta = carta.id_carta)
    join atributo_monstro on (atributo_monstro.id_atributo_monstro = carta_monstro.id_atributo_monstro)
    join tipo on (tipo.id_tipo = carta_monstro.id_tipo)
    join tipo_efeito_monstro on (tipo_efeito_monstro.id_tipo_efeito_monstro = carta_monstro.id_tipo_efeito_monstro);
	
	
create view carta_magica_consulta as 
	select nome_carta,carta.descricao,imagem_link,tipo.descricao as Tipo_magica from carta
    join carta_magica on(carta_magica.id_carta = carta.id_carta)
    join tipo on (tipo.id_tipo = carta_magica.id_tipo);
	

create view carta_armadilha_consulta as 
	select nome_carta,carta.descricao,imagem_link,tipo.descricao as Tipo_armadilha from carta
    join carta_armadilha on(carta_armadilha.id_carta = carta.id_carta)
    join tipo on (tipo.id_tipo = carta_armadilha.id_tipo);
	
create view carta_monstro_fora_da_lista as 
	select nome_carta,carta.descricao,imagem_link,ataque,defesa,level,tipo_efeito_monstro,atributo,tipo_situacao from carta
    join carta_monstro on(carta_monstro.id_carta = carta.id_carta)
    join atributo_monstro on (atributo_monstro.id_atributo_monstro = carta_monstro.id_atributo_monstro)
    join tipo on (tipo.id_tipo = carta_monstro.id_tipo)
    join tipo_efeito_monstro on (tipo_efeito_monstro.id_tipo_efeito_monstro = carta_monstro.id_tipo_efeito_monstro)
    join situacao_na_lista on (situacao_na_lista.id_situacao = carta.id_situacao)
    where (situacao_na_lista.id_situacao = 4);
	
create view carta_armadilha_fora_lista as 
	select nome_carta,carta.descricao,imagem_link,tipo.descricao as Tipo_armadilha,tipo_situacao from carta
    join carta_armadilha on(carta_armadilha.id_carta = carta.id_carta)
    join tipo on (tipo.id_tipo = carta_armadilha.id_tipo)
    join situacao_na_lista on(carta.id_situacao = situacao_na_lista.id_situacao)
    where(situacao_na_lista.id_situacao = 4);
	
create view carta_magica_fora_lista as 
	select nome_carta,carta.descricao,imagem_link,tipo.descricao as Tipo_magica,tipo_situacao from carta
    join carta_magica on(carta_magica.id_carta = carta.id_carta)
    join tipo on (tipo.id_tipo = carta_magica.id_tipo)
    join situacao_na_lista on(carta.id_situacao = situacao_na_lista.id_situacao)
    where(situacao_na_lista.id_situacao = 4);