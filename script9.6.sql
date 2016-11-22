select * from usuario join endereco on(cod_usr = cod_usr_FK);
select * from usuario join deck on(usuario.cod_usr = deck.cod_usr);
select * from deck join contem_deck_carta on(deck.cod_deck = contem_deck_carta.cod_deck) join carta on(contem_deck_carta.id_carta = carta.id_carta);
select * from carta join situacao_na_lista on (carta.id_situacao = situacao_na_lista.id_situacao);
select * from carta join carta_armadilha on(carta.id_carta = carta_armadilha.id_carta) join tipo on(carta_armadilha.id_tipo = tipo.id_tipo);
select * from carta join carta_magica on(carta.id_carta = carta_magica.id_carta) join tipo on(carta_magica.id_tipo = tipo.id_tipo);
select * from carta 
join carta_monstro on(carta.id_carta = carta_monstro.id_carta) 
join tipo on(carta_monstro.id_tipo = tipo.id_tipo)
join atributo_monstro on(carta_monstro.id_atributo_monstro = atributo_monstro.id_atributo_monstro)
join tipo_efeito_monstro on(carta_monstro.id_tipo_efeito_monstro = tipo_efeito_monstro.id_tipo_efeito_monstro);