select * from carta left join carta_monstro on(carta.id_carta = carta_monstro.id_carta_monstro);
select * from carta_monstro right join tipo on(tipo.id_tipo = carta_monstro.id_tipo) group by tipo.id_tipo;
select * from carta right join carta_armadilha on(carta.id_carta = carta_armadilha.id_carta_armadilha);
select * from carta left join contem_deck_carta on(contem_deck_carta.id_carta = carta.id_carta);