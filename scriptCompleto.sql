drop database if exists yugiohBD;
create database yugiohBD;
use yugiohBD;

CREATE TABLE deck (
cod_deck INTEGER PRIMARY KEY,
nome_deck VARCHAR(50),
quantidade_cartas INTEGER,
cod_usr INTEGER
);

CREATE TABLE situacao_na_lista (
id_situacao INTEGER PRIMARY KEY,
tipo_situacao VARCHAR(50)
);

CREATE TABLE carta_armadilha (
id_carta_armadilha INTEGER PRIMARY KEY,
id_carta INTEGER,
id_tipo INTEGER
);

CREATE TABLE carta_magica (
id_carta_magica INTEGER PRIMARY KEY,
id_carta INTEGER,
id_tipo INTEGER
);

CREATE TABLE carta (
descricao TEXT,
id_carta INTEGER PRIMARY KEY,
nome_carta VARCHAR(50),
id_situacao INTEGER,
imagem_link varchar(200),
FOREIGN KEY(id_situacao) REFERENCES situacao_na_lista (id_situacao)
);

CREATE TABLE atributo_monstro (
id_atributo_monstro INTEGER PRIMARY KEY,
atributo VARCHAR(50)
);

CREATE TABLE carta_monstro (
id_carta_monstro INTEGER PRIMARY KEY,
ataque INTEGER,
level INTEGER,
defesa INTEGER,
id_carta INTEGER,
id_atributo_monstro INTEGER,
id_tipo_efeito_monstro INTEGER,
id_tipo INTEGER,
FOREIGN KEY(id_carta) REFERENCES carta (id_carta),
FOREIGN KEY(id_atributo_monstro) REFERENCES atributo_monstro (id_atributo_monstro)
);

CREATE TABLE tipo_efeito_monstro (
id_tipo_efeito_monstro INTEGER PRIMARY KEY,
tipo_efeito_monstro VARCHAR(50)
);

CREATE TABLE usuario (
nome_completo VARCHAR(150),
data_nascimento DATE,
resposta_secreta VARCHAR(50),
telefone VARCHAR(20),
email VARCHAR(100),
senha VARCHAR(15),
nome_usuario VARCHAR(45),
pergunta_secreta VARCHAR(200),
sexo VARCHAR(12),
cod_usr INTEGER auto_increment PRIMARY KEY
);

CREATE TABLE tipo (
id_tipo INTEGER PRIMARY KEY,
descricao VARCHAR(50)
);

CREATE TABLE endereco (
endereco_PK INTEGER PRIMARY KEY,
numero INTEGER,
rua VARCHAR(100),
bairro varchar(100),
cep INTEGER,
cidade VARCHAR(50),
estado VARCHAR(50),
cod_usr_FK INTEGER,
FOREIGN KEY(cod_usr_FK) REFERENCES usuario (cod_usr)
);

CREATE TABLE contem_deck_carta (
cod_deck INTEGER,
id_carta INTEGER,
contador INTEGER,
FOREIGN KEY(cod_deck) REFERENCES deck (cod_deck),
FOREIGN KEY(id_carta) REFERENCES carta (id_carta)
);

ALTER TABLE deck ADD FOREIGN KEY(cod_usr) REFERENCES usuario (cod_usr);
ALTER TABLE carta_armadilha ADD FOREIGN KEY(id_carta) REFERENCES carta (id_carta);
ALTER TABLE carta_armadilha ADD FOREIGN KEY(id_tipo) REFERENCES tipo (id_tipo);
ALTER TABLE carta_magica ADD FOREIGN KEY(id_carta) REFERENCES carta (id_carta);
ALTER TABLE carta_magica ADD FOREIGN KEY(id_tipo) REFERENCES tipo (id_tipo);
ALTER TABLE carta_monstro ADD FOREIGN KEY(id_tipo_efeito_monstro) REFERENCES tipo_efeito_monstro (id_tipo_efeito_monstro);
ALTER TABLE carta_monstro ADD FOREIGN KEY(id_tipo) REFERENCES tipo (id_tipo);


insert into usuario (nome_completo, data_nascimento,resposta_secreta,telefone,email,senha,nome_usuario,pergunta_secreta,sexo) values
	("Vinicius Barbosa Martins",'1996-01-14',"zyra","552732532201","vini.martinslol@gmail.com","***********","viniciusmartins","Qual nome do meu cachorro ?","Masculino"),
    ("Lucas Souza",'1998-05-22',"nada","552132823540","lucassouza@gmail.com","***********","lucassouza","nada","Masculino"),
    ("Vitoria Rocha",'2000-11-19',"nada","554945896615","vitoriarocha@hotmail.com","***********","vitoriarocha","nada","Feminino"),
    ("Wendell Neto",'1985-07-30',"nada","558532567458","wendellneto@gmail.com","***********","wendellneto","nada","Masculino"),
	("Rafael Barbosa Martins",'2002-07-07',"nada","552732532201","rafaelmartins@gmail.com","***********","rafaelmartins","nada","Masculino"),
    ("Matheus Silva",'1998-05-11',"nada","552732532201","matheussilva@gmail.com","***********","matheussilva","nada","Masculino"),
    ("Meire Hervelli ",'1994-02-22',"nada","552732532201","meirehervelli@gmail.com","***********","meirehervelli","nada","Feminino"),
    ("Raiane Do Couto",'1999-03-25',"nada","552732532201","raianedocouto@gmail.com","***********","raianedocouto","nada","Feminino"),
    ("Igor Ribas",'1996-01-29',"nada","552732532201","igorribas@gmail.com","***********","igorribas","nada","Masculino"),
    ("Júlia Rinaldi",'1991-07-29',"nada","552732532201","juliarinaldi@gmail.com","***********","juliarinaldi","nada","Feminino");

insert into endereco (endereco_PK, numero, rua, cep, cidade, estado, bairro, cod_usr_FK) values
	(1,55,"Avenida Cosme",40220350,"Salvador","BA","Engenho Velho da Federação",5),
    (2,136,"Rua Aripuana",79117431,"Campo Grande","MS","Vila Neusa",3),
    (3,211,"Rua Epitácio Pessoa",29156009,"Cariacica","ES","Cariacica Sede",9),
    (4,07,"Escadaria Edvaldo Agostinho Mendonça",29045571,"Vitória","ES","Consolação",1),
    (5,15,"Rua Oito",25902755,"Magé","RJ","Citrolândia",6),
    (6,22,"Avenida Canal",25266240,"Duque de Caxias","RJ","Imbariê",7),
    (7,145,"Rua Euclides da Cunha",69060190,"Manaus","AM","Manaus",2),
    (8,156,"Travessa Campo Grande",60711200,"Fortaleza","CE","Maraponga",4),
    (9,29,"Avenida Minas Gerais",38440207,"Araguari","MG","Santa Helena",8),
    (10,211,"Quadra Quadra 309 Conjunto 1",72622201,"Brasília","DF","Recanto das Emas",10);

    insert into atributo_monstro (id_atributo_monstro,atributo) values
	(1,"Dark"),
	(2,"Divine"),
	(3,"Earth"),
	(4,"Fire"),
	(5,"Light"),
	(6,"Water"),
	(7,"Wind");
    
    
insert into situacao_na_lista (id_situacao,tipo_situacao) values 
	(1,"Banida"),
	(2,"Limitada"),
	(3,"Semi-Limitada"),
	(4,"Fora da Lista");
    
    
insert into tipo (id_tipo,descricao) values
	(1,"Aqua"),
	(2,"Beast"),
	(3,"Beast-Warrior"),
	(4,"Dinossaur"),
	(5,"Divine-Beast"),
	(6,"Dragon"),
	(7,"Fairy"),
	(8,"Fiend"),
	(9,"Fish"),
	(10,"Insect"),
	(11,"Machine"),
	(12,"Plant"),
	(13,"Psychic"),
	(14,"Pyro"),
	(15,"Reptile"),
	(16,"Rock"),
	(17,"Sea Serpent"),
	(18,"Spellcaster"),
	(19,"Thunder"),
	(20,"Warrior"),
	(21,"Winged-Beast"),
	(22,"Wyrm"),
	(23,"Zombie"),
	(24,"Normal"),
	(25,"Continuous"),
	(26,"Equip"),
	(27,"Field"),
	(28,"Quick-Play"),
	(29,"Ritual"),
	(30,"Counter");
    
insert into tipo_efeito_monstro (id_tipo_efeito_monstro,tipo_efeito_monstro) values
	(1,"Normal"),
	(2,"Effect"),
	(3,"Fusion"),
	(4,"Fusion / Effect"),
	(5,"Gemini"),
	(6,"Gemini / Effect"),
	(7,"Pendulum"),
	(8,"Pendulum / Effect"),
	(9,"Ritual"),
	(10,"Ritual / Effect"),
	(11,"Spirit"),
	(12,"Synchro"),
	(13,"Synchro / Effect"),
	(14,"Synchro / Pendulum / Effect"),
	(15,"Synchro /Tuner"),
	(16,"Toon"),
	(17,"Tuner"),
	(18,"Tuner / Effect"),
	(19,"Union"),
	(20,"XYZ"),
	(21,"XYZ / Effect"),
	(22,"Tokens");


insert into carta (id_carta,nome_carta,descricao,id_situacao,imagem_link) values
	(91,"Amazoness Archer (F.K.A. Amazon Archer)","You can Tribute 2 monsters to inflict 1200 damage to your opponent.",4,"C:\servidor\documentos\imagem\carta1.jpg"),
    (129,"Ancient Gear Beast","This card cannot be Special Summoned. The effects of your opponent's Effect Monster that this monster destroys as a result of battle are negated. If this card attacks, your opponent cannot activate any Spell or Trap Cards until the end of the Damage Step.",4,"C:\servidor\documentos\imagem\carta2.jpg"),
    (306,"Barrier Statue of the Torrent","No monsters can be Special Summoned, except for WATER monsters.",4,"C:\servidor\documentos\imagem\carta41.jpg"),
    (512,"Bracchio-Raidus","""Two-Headed King Rex"" + ""Crawling Dragon #2""",4,"C:\servidor\documentos\imagem\carta40.jpg"),
    (549,"Bujin Yamato","Once per turn, during your End Phase: You can add 1 ""Bujin"" monster from your Deck to your hand, then send 1 card from your hand to the Graveyard. You can only control 1 ""Bujin Yamato"".",4,"C:\servidor\documentos\imagem\carta3.jpg"),
    (595,"Cannon Soldier","You can Tribute 1 monster to inflict 500 damage to your opponent.",4,"C:\servidor\documentos\imagem\carta39.jpg"),
    (773,"Crimson Sunbird","Faith Bird + ""Skull Red Bird""",4,"C:\servidor\documentos\imagem\carta38.jpg"),
    (956,"Dark Scorpion Burglars","When this card inflicts Battle Damage to your opponent: Your opponent sends 1 Spell Card from their Deck to the Graveyard.",4,"C:\servidor\documentos\imagem\carta4.jpg"),
    (1121,"Don Turtle","When this card is Normal Summoned or Flip Summoned, you can Special Summon any number of Don Turtle""(s) from your hand.""",4,"C:\servidor\documentos\imagem\carta5.jpg"),
    (1123,"Doom Donuts","FLIP: Destroy all face-up monsters on the field with an original ATK or DEF of 0.",4,"C:\servidor\documentos\imagem\carta6.jpg"),
    (1202,"Dungeon Worm","Hidden under the floors of a labyrinth, it swallows any who pass above.",4,"C:\servidor\documentos\imagem\carta7.jpg"),
    (1408,"Exodia the Forbidden One","When you have ""Right Leg of the Forbidden One"", ""Left Leg of the Forbidden One"", ""Right Arm of the Forbidden One"" and ""Left Arm of the Forbidden One"" in addition to this card in your hand, you win the Duel.",1,"C:\servidor\documentos\imagem\carta8.jpg"),
    (1933,"Gravekeeper's Guard","FLIP: Select 1 monster your opponent controls and return it to the hand.",4,"C:\servidor\documentos\imagem\carta9.jpg"),
    (1973,"Greenkappa","FLIP: Target 2 Set Spell/Trap Cards on the field, destroy those targets.",4,"C:\servidor\documentos\imagem\carta10.jpg"),
    (1977,"Griffore","This monster's tough hide deflects almost any attack.",4,"C:\servidor\documentos\imagem\carta11.jpg"),
    (2292,"Jinzo","Trap Cards, and their effects on the field, cannot be activated. Negate all Trap Card effects on the field.",4,"C:\servidor\documentos\imagem\carta13.jpg"),
    (2862,"Millennium Shield","A Millennium item, it's rumored to block any strong attack.",4,"C:\servidor\documentos\imagem\carta42.jpg"),
    (2898,"Mist Wurm","1 Tuner + 2 or more non-Tuner monsters. When this card is Synchro Summoned, return up to 3 cards your opponent controls to the hand.",4,"C:\servidor\documentos\imagem\carta15.jpg"),
    (2963,"Mystic Lamp","This monster may attack your opponent's Life Points directly.",4,"C:\servidor\documentos\imagem\carta43.jpg"),
    (4902,"Ancient Telescope","See the top 5 cards of your opponent's Deck. Return the cards to the Deck in the same order.",4,"C:\servidor\documentos\imagem\carta17.jpg"),
    (5191,"Monster Reborn","Target 1 monster in either player's Graveyard; Special Summon it.",1,"C:\servidor\documentos\imagem\carta18.jpg"),
    (5247,"Pot of Duality","Reveal the top 3 cards of your Deck, add 1 of them to your hand, then shuffle the rest back into your Deck. You can only activate 1 ""Pot of Duality"" per turn. You cannot Special Summon during the turn you activate this card.",4,"C:\servidor\documentos\imagem\carta19.jpg"),
    (5249,"Pot of Greed","Draw 2 cards.",1,"C:\servidor\documentos\imagem\carta20.jpg"),
    (5264,"Raigeki","Destroy all monsters your opponent controls.",2,"C:\servidor\documentos\imagem\carta21.jpg"),
    (5265,"Raimei","Decrease your opponent's Life Points by 300 points.",4,"C:\servidor\documentos\imagem\carta22.jpg"),
    (5425,"Triangle Ecstasy Spark","Until the End Phase, the ATK of all ""Harpie Lady Sisters"" currently on the field becomes 2700 your opponent cannot activate any Trap Cards, also negate all your opponent's Trap Card effects on the field.",4,"C:\servidor\documentos\imagem\carta23.jpg"),
    (5445,"Warrior Elimination","Destroy all face-up Warrior-Type monsters on the field",4,"C:\servidor\documentos\imagem\carta24.jpg"),
    (5463,"ZERO-MAX","If there are no cards in your hand, select 1 ""Infernity"" monster in your Graveyard. Special Summon it, and destroy all face-up monsters on the field with lower ATK than it. You cannot conduct your Battle Phase this turn.",4,"C:\servidor\documentos\imagem\carta25.jpg"),
    (6743,"Orbital Bombardment","Send 1 ""Alien"" monster from your side of the field to the Graveyard to activate this card. Destroy 1 Spell or Trap Card on the field.",4,"C:\servidor\documentos\imagem\carta26.jpg"),
	(6745,"Over Capacity","When your opponent Special Summons a monster: Banish all face-up Level 2 or lower monsters on the field.",4,"C:\servidor\documentos\imagem\carta28.jpg"),
	(6765,"Pharaoh's Treasure","After activation, put this card face-up in your Deck and shuffle it. When you draw this card, send it to the Graveyard and add 1 card in your Graveyard (except this card) to your hand.",4,"C:\servidor\documentos\imagem\carta30.jpg"),
	(6766,"Phoenix Wing Wind Blast","Discard 1 card to target 1 card your opponent controls; return that target to the top of the Deck.",4,"C:\servidor\documentos\imagem\carta31.jpg"),
	(6767,"Photon Current","When a face-up LIGHT Dragon-Type monster you control is targeted for an attack: The attack target gains ATK equal to the ATK of the attacking monster's ATK, until the end of the Damage Step.",4,"C:\servidor\documentos\imagem\carta32.jpg"),
	(6768,"Physical Double","During your opponent's turn: Target 1 face-up monster your opponent controls; Special Summon 1 ""Mirage Token"" with the same Level, Type, Attribute, ATK, and DEF as that target. Destroy this Token during the End Phase.",4,"C:\servidor\documentos\imagem\carta33.jpg"),
	(6769,"Pikeru's Circle of Enchantment","Damage to you from card effects becomes 0 until the end of this turn.",4,"C:\servidor\documentos\imagem\carta34.jpg"),
	(6770,"Pikeru's Second Sight","Until your opponent's second End Phase, your opponent shows you all cards that he/she draws and then add them to his/her hand.",4,"C:\servidor\documentos\imagem\carta35.jpg"),
	(6772,"Pinpoint Guard","When an opponent's monster declares an attack: Target 1 Level 4 or lower monster in your Graveyard; Special Summon it in face-up Defense Position. It cannot be destroyed by battle or by card effects this turn.",4,"C:\servidor\documentos\imagem\carta37.jpg");
	
insert into carta_monstro(id_carta_monstro,id_carta,ataque,defesa,level,id_atributo_monstro,id_tipo_efeito_monstro,id_tipo) values
	(91,91,1400,1000,4,3,2,20),
    (129,129,2000,2000,6,3,2,11),
    (306,306,1000,1000,4,6,2,1),
    (512,512,2200,2000,6,6,3,4),
    (549,549,1800,200,4,5,2,3),
    (595,595,1400,1300,4,1,2,11),
    (773,773,2300,1800,6,4,3,21),
    (956,956,1000,1000,4,1,2,11),
    (1121,1121,1100,1200,3,6,2,15),
    (1123,1123,0,0,1,3,2,8),
    (1202,1202,1800,1500,5,3,1,10),
    (1408,1408,1000,1000,3,1,2,18),
    (1933,1933,1000,1900,4,1,2,18),
    (1977,1977,1200,1500,4,3,1,2),
    (2292,2292,2400,1500,6,1,2,11),
    (2862,2862,0,3000,5,3,1,20),
    (2898,2898,2500,1500,9,7,13,19),
    (2963,2963,400,300,1,1,2,18);
	
insert into carta_magica (id_carta_magica,id_carta,id_tipo) values
	(4902,4902,24),
    (5191,5191,24),
    (5247,5247,24),
    (5249,5249,24),
    (5264,5264,24),
    (5265,5265,24),
    (5425,5425,24),
    (5445,5445,24),
    (5463,5463,24);
	
insert into carta_armadilha (id_carta_armadilha,id_carta,id_tipo) values
	(6743,6743,24),
    (6745,6745,24),
    (6765,6765,24),
    (6766,6766,24),
    (6767,6767,24),
    (6768,6768,24),
    (6769,6769,24),
    (6770,6770,24),
    (6772,6772,24);

insert into deck (cod_deck,nome_deck,quantidade_cartas,cod_usr) values
    (1,"Bujin",12,1),
    (2,"C'Thum",15,5);

insert into contem_deck_carta (cod_deck,id_carta,contador) values 
    (1,91,1),
    (1,129,1),
    (1,306,1),
    (1,512,1),
    (1,549,1),
    (1,595,1),
    (1,773,1),
    (1,4902,1),
    (1,5191,1),
    (1,5247,1),
    (1,5249,1),
    (1,5264,1),
    (1,6743,1),
    (2,6745,1),
    (2,6765,1),
    (2,6766,1),
    (2,6767,1),
    (2,1123,1),
    (2,1977,1),
    (2,1202,1),
    (2,2292,1),
    (2,2963,1),
    (2,2898,1),
    (2,956,1),
    (2,595,1),
    (2,306,1),
    (2,2963,1),
    (2,6772,1);
