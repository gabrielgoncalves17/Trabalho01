# TRABALHO 01
Trabalho desenvolvido durante a disciplina de BD

#Sumário

###1	COMPONENTES<br>
Vinicius Barbosa Martins<br>
Kelvin Lehrback<br>
###2	INTRODUÇÃO E MOTIVAÇAO<br>
Tendo em visto o crescimento da comunidade duelista no solo Espirito Santense (e consequentemente no Brasil à fora), viu-se a necessidade de criação de uma plataforma que agilize a consulta de dados das cartas existentes e o armazenamento de decks(conjunto de cartas montado pelos jogadores) do card game “Yu-Gi-Oh! Trading Card game”.

Para que assim, a busca pela informação desejada a respeito da carta viesse a se tornar ágil, rápida e confortável, beneficiando assim tanto os criadores do sistema quanto as pessoas que irão utilizá-lo.<br>


###3	MINI-MUNDO<br>
Neste sistema, o usuário terá a opção de criar uma conta caso deseje compartilhar os decks montados, e a conta de usuário terá as seguintes informações: Nome de usuário (nickname), telefone, data de nascimento, nome completo, senha e o seu endereço.

Tendo já criado a conta, ele poderá montar os seus decks (para fins de armazenamento de informações e o compartilhamento das mesmas).

O sistema guardará a data no qual cada deck foi criado, e cada deck contém um nome escolhido pelo usuário, e a medida que o mesmo for armazenando as cartas, irá também mostrar a quantidade de cartas contidas no mesmo. Sendo assim, o deck possui cartas, e estas são divididas em monstros, mágicas e armadilhas.

Os atributos comuns a todas as cartas são o nome da carta, a descrição e a situação da mesma na ban list (lista de cartas banidas, limitadas e semi limitadas).

Os monstros contém tipo, ataque, defesa, level (ou rank para XYZ), e o seu atributo. As mágicas possuem o tipo dela assim como as armadilhas.<br>


###4	RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
https://github.com/viniciusgame15/BDmoises/blob/master/ProjetoBD.pdf


###5	MODELO CONCEITUAL<br>
    5.1 NOTACAO ENTIDADE RELACIONAMENTO
![Alt text](https://github.com/viniciusgame15/BDmoises/blob/master/projetobd31-10.jpg?raw=true "Modelo Conceitual")
    
    5.2 NOTACAO UML (Caso esteja fazendo a disciplina de analise)
https://github.com/viniciusgame15/Trabalho01/blob/master/diagramaUML.png

####5.1 Validação do Modelo Conceitual
    [Grupo01]: [Juliana]
    [Grupo02]: [Estevao]

####5.2 DECISÕES DE PROJETO
    Endereço: Optamos por ser um campo multivalorado por conter mais de uma informação.
    Usar o conceito de herança entre as tabelas carta -> carta monstro, carta -> carta mágica, carta -> carta armadilha.

####5.3 DESCRIÇÃO DOS DADOS 
    
    USUARIO: Tabela que armazena as informações relativas ao usuario.
    a)nome_completo: campo do tipo varchar onde será armazenado o nome que o usuário queira que apareça para as outras pessoas na hora de compartilhar o deck. Seria o seu nome real.
    b)data_nascimento: campo do tipo data onde será armazenada a data de nascimento do usuário.
    c)pergunta_secreta: campo do tipo varchar onde será armazenado uma pergunta para fins de confirmação caso o usuário perca a senha.
    d)resposta_secreta: campo do tipo varchar de forma criptografada onde será armazenado a resposta da pergunta secreta para fins de confirmação de que o usuário que está acessando aquela conta é o dono da mesma.
    e)sexo: campo do tipo varchar onde será armazenado o sexo do usuário.
    f)nome_usuário: campo do tipo varchar onde será armazenado o nome de usuário único (nickname) escolhido pelo mesmo para fins de acesso a conta.
    g)senha: campo do tipo varchar de forma criptografada para fins de armazenamento da senha do usuário.
    h)email: campo do tipo varchar onde será armazenado o e-mail válido que o usuário forneceu para fins de confirmação da criação da conta e resgate de senha.
    i)telefone: campo do tipo varchar onde será armazenado o telefone que o usuário nos forneceu.
    j)endereço: campo multivalorado onde será armazenado os dados do endereço do usuário, contendo numero, rua, cep, cidade, estado.
    k)cod_usr: campo do tipo bigint onde será armazenado o número de registro do usuário para fins de identificação única do mesmo no sistema.
    DECK: Tabela que armazena informações do deck referente ao usuario.
    a)quantidade_cartas: campo do tipo int onde será armazenado a quantidade de cartas presente neste deck.
    b)cod_deck: campo do tipo int onde será armazenado o código único do deck como registro para fins de busca e atualização no sistema.
    c)nome_deck: campo do tipo varchar onde será armazenado um nome do deck que o o usuário queira colocar como forma de identificação do mesmo.
    CARTA: Tabela que armazena informações referente as cartas.
    a)id_carta: campo do tipo int onde será armazenado o código referente aquela carta para fins de busca no sistema.
    b)nome_carta: campo do tipo varchar onde será armazenado o nome da carta (lembrando que o nome da carta é único).
    c)descrição: campo do tipo varchar onde será armazenada a descrição da carta.
    CARTA_MONSTRO: Tabela que armazena informações da carta monstro.
    a)id_carta_monstro: campo do tipo int onde será armazenado o código referente a esta carta monstros para fins de busca no sistema.
    b)ataque: campo do tipo int onde será armazenado o número referente ao ataque deste monstro.
    c)defesa: campo do tipo int onde será armazenado o número referente a defesa deste monstro.
    d)leve: campo do tipo int onde será armazenado o número referente ao level deste monstro.
    CARTA_MAGICA: Tabela que armazena o informações da carta magica.
    a)id_carta_magica: campo do tipo int onde será armazenado o código referente a esta carta mágica para fins de busca no sistema.
    CARTA_ARMADILHA: Tabela que armazena informações da carta armadilha.
    a)id_carta_armadilha: campo do tipo int no qual será armazenado o código referente  a esta carta armadilha para fins de busca no sistema.
    LISTA_DE_CARTAS: Tabela que armazena informações de quais cartas estão presentes em quais decks.
    a)cod_deck_carta: campo do tipo int que faz referência a tabela lista_de_cartas como um todo para fins de busca no sistema
    b)copia: campo do tipo int referente ao numero de copias da mesma carta referente a tabela carta
    SITUAÇÃO_NA_LISTA: Tabela que armazena os estados da carta se ela esta banida, limitada, etc.
    a)id_situacao: campo do tipo int onde será armazenado o código referente a um tipo de situação na qual a carta se encontra.
    b)tipo_situacao: campo do tipo varchar onde está descrito qual é a situação da carta.
    TIPO_EFEITO_MONSTRO: Tabela que armazena os tipos de efeito de monstros.
    a)id_tipo_efeito_monstros: campo do tipo int onde será armazenado o código referente ao tipo de efeito no qual o monstro possui.
    b)tipo_efeito_monstro: campo do tipo varchar onde será armazenado o nome do tipo de efeito no qual o monstro possui.
    ATRIBUTO_MONSTRO: Tabela que armazina tipo dos atributos da carta monstro.
    a)id_atributo_monstro: campo do tipo int onde será armazenado o código referente ao tipo de atributo no qual o monstro possui.
    b)atributo: campo do tipo varchar no qual será armazenado a descrição do atributo contido no monstro.
    TIPO_MONSTRO: Tabela que armazena os tipos existentes de monstro.
    a)id_tipo_monstro: campo do tipo int no qual será armazenado o código refente ao tipo de monstro que a carta monstro pertence.
    b)tipo_monstro: campo do tipo varchar onde será armazenado a descrição do tipo de monstro que a carta monstro possui.
    TIPO_MAGICA: Tabela que armazena os tipos existentes de magica.
    a)id_tipo_magica: campo do tipo int no qual será armazenado o código referente ao tipo de mágica que a carta mágica pode possuir.
    b)tipo_magica: campo do tipo varchar no qual será armazenado a descrição do tipo de carta mágica na qual a carta mágica pode possuir.
    TIPO_ARMADILHA: Tabela que armazena os tipos existentes de armadilha.
    a)id_tipo_armadilha: campo do tipo int no qual será armazenado o código referente ao tipo de armadilha que a carta armadilha pode possuir.
    b) campo do tipo varchar no qual será armazenado a descrição do tipo de carta armadilha na qual a carta armadilha pode possuir.
    
    
    


###6	MODELO LÓGICO<br>
![Alt text](https://github.com/viniciusgame15/BDmoises/blob/master/logicobd31-10.jpg?raw=true "Modelo Lógico")
    
###7	MODELO FÍSICO<br>
https://github.com/viniciusgame15/BDmoises/blob/master/script.sql
###8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
####8.1 DETALHAMENTO DAS INFORMAÇÕES
      As informações a respeito das cartas foram retiradas do seguinte site: https://www.yugiohcardguide.com/
      E, em relação a atributo "situação na lista" e a tabela a respeito desse atributo, as informações foram retiradas do site : http://www.yugioh-card.com/en/limited/
      Sobre o conhecimento necessário para a realização deste trabalho, foi consultado para fins de retenção de dúvidas o manual oficial de regras do TCG Yu-Gi-Oh, disponivel no seguinte endereço : http://www.yugioh-card.com/uk/rulebook/Rulebook_v9_pt.pdf
        
####8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
https://github.com/viniciusgame15/Trabalho01/blob/master/scriptCompleto.sql

###9	TABELAS E PRINCIPAIS CONSULTAS<br>
####9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS<br>
https://github.com/viniciusgame15/Trabalho01/blob/master/script9.1.sql<br>
###### select * from usuario;
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.1.1.png?raw=true "9.1.1")<br>
###### select * from endereco;
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.1.2.png?raw=true "9.1.2")<br>
###### select * from deck;
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.1.3.png?raw=true "9.1.3")<br>
###### select * from contem_deck_carta;
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.1.4.png?raw=true "9.1.4")<br>
###### select * from carta;
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.1.5.png?raw=true "9.1.5")<br>
###### select * from situacao_na_lista;
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.1.6.png?raw=true "9.1.6")<br>
###### select * from carta_monstro;
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.1.7.png?raw=true "9.1.7")<br>
###### select * from carta_armadilha;
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.1.8.png?raw=true "9.1.8")<br>
###### select * from carta_magica;
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.1.9.png?raw=true "9.1.9")<br>
###### select * from tipo;
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.1.10.png?raw=true "9.1.10")<br>
###### select * from tipo_efeito_monstro;
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.1.11.png?raw=true "9.1.11")<br>
###### select * from atributo_monstro;
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.1.12.png?raw=true "9.1.12")<br>
####9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE<br>
https://github.com/viniciusgame15/Trabalho01/blob/master/script9.2.sql<br>
###### select * from usuario where(sexo = "Masculino");
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.2.1.png?raw=true "9.2.1")<br>
###### select * from endereco where(estado = "ES");
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.2.2.png?raw=true "9.2.2")<br>
###### select * from deck where(quantidade_cartas > 10);
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.2.3.png?raw=true "9.2.3")<br>
####9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS<br>
https://github.com/viniciusgame15/Trabalho01/blob/master/script9.3.sql<br>
###### select estado as est, cidade as cid from endereco where(estado = "ES" and cidade = "Cariacica");
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.3.1.png?raw=true "9.3.1")<br>
###### select nome_completo ,resposta_secreta as resposta, pergunta_secreta as pergunta from usuario where(resposta_secreta = "nada" and pergunta_secreta = "nada");
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.3.2.png?raw=true "9.3.2")<br>
####9.4	CONSULTAS QUE USAM OPERADORES LIKE<br>
https://github.com/viniciusgame15/Trabalho01/blob/master/script9.4.sql<br>
###### select nome_carta from carta where nome_carta like "B%";
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.4.1.png?raw=true "9.4.1")<br>
###### select * from usuario where data_nascimento like "1996-%-%";
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.4.2.png?raw=true "9.4.2")<br>
###### select * from usuario where nome_completo like "M%";
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.4.3.png?raw=true "9.4.3")<br>
####9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS<br>
https://github.com/viniciusgame15/Trabalho01/blob/master/script9.5.sql<br>
###### select * from usuario where cod_usr = 1;
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.5.1.png?raw=true "9.5.1")<br>
###### select * from deck;
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.5.2.png?raw=true "9.5.2")<br>
###### select * from usuario;
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.5.3.png?raw=true "9.5.3")<br>
###### select * from endereco;
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.5.4.png?raw=true "9.5.4")<br>
###### select * from carta;
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.5.5.png?raw=true "9.5.5")<br>
####9.6	CONSULTAS COM JUNÇÃO<br>
https://github.com/viniciusgame15/Trabalho01/blob/master/script9.6.sql<br>
###### select * from usuario join endereco on(cod_usr = cod_usr_FK);
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.6.1.png?raw=true "9.6.1")<br>
###### select * from usuario join deck on(usuario.cod_usr = deck.cod_usr);
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.6.2.png?raw=true "9.6.2")<br>
###### select * from deck join contem_deck_carta on(deck.cod_deck = contem_deck_carta.cod_deck) join carta on(contem_deck_carta.id_carta = carta.id_carta);
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.6.3.png?raw=true "9.6.3")<br>
###### select * from carta join situacao_na_lista on (carta.id_situacao = situacao_na_lista.id_situacao);
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.6.4.png?raw=true "9.6.4")<br>
###### select * from carta join carta_armadilha on(carta.id_carta = carta_armadilha.id_carta) join tipo on(carta_armadilha.id_tipo = tipo.id_tipo);
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.6.5.png?raw=true "9.6.5")<br>
###### select * from carta join carta_magica on(carta.id_carta = carta_magica.id_carta) join tipo on(carta_magica.id_tipo = tipo.id_tipo);
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.6.6.png?raw=true "9.6.6")<br>
###### select * from carta 
join carta_monstro on(carta.id_carta = carta_monstro.id_carta) 
join tipo on(carta_monstro.id_tipo = tipo.id_tipo)
join atributo_monstro on(carta_monstro.id_atributo_monstro = atributo_monstro.id_atributo_monstro)
join tipo_efeito_monstro on(carta_monstro.id_tipo_efeito_monstro = tipo_efeito_monstro.id_tipo_efeito_monstro);
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.6.7.png?raw=true "9.6.7")<br>
####9.7	CONSULTAS COM GROUP BY<br>
https://github.com/viniciusgame15/Trabalho01/blob/master/script9.7.sql
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.7.1.png?raw=true "9.7.1")
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.7.2.png?raw=true "9.7.2")
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.7.3.png?raw=true "9.7.3")
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.7.4.png?raw=true "9.7.4")
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.7.5.png?raw=true "9.7.5")
####9.8	CONSULTAS COM LEFT E RIGHT JOIN<br>
https://github.com/viniciusgame15/Trabalho01/blob/master/script9.8.sql
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.8.1.png?raw=true "9.8.1")
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.8.2.png?raw=true "9.8.2")
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.8.3.png?raw=true "9.8.3")
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.8.4.png?raw=true "9.8.4")
####9.9	CONSULTAS COM SELF JOIN E VIEW<br>
https://github.com/viniciusgame15/Trabalho01/blob/master/script9.9.sql
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.9.1.png?raw=true "9.9.1")
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.9.2.png?raw=true "9.9.2")
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.9.3.png?raw=true "9.9.3")
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.9.4.png?raw=true "9.9.4")
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.9.5.png?raw=true "9.9.5")
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.9.6.png?raw=true "9.9.6")
####9.10	SUBCONSULTAS<br>
https://github.com/viniciusgame15/Trabalho01/blob/master/script9.10.sql
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.10.1.png?raw=true "9.10.1")
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.10.2.png?raw=true "9.10.2")
![Alt text](https://github.com/viniciusgame15/Trabalho01/blob/master/9.10.3.png?raw=true "9.10.3")
###10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>
###11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>

   Relacionar as tabelas de acordo com os atributos de cada carta, tendo em vista que as mesmas possuem atributos diferentes dependendo de sua categoria (monstro,mágica e armadilha), sendo assim, foi necessário criar novas tabelas para armazenar esses atributos "secundários", como por exemplo em monstros que só pode ter um atributo do tipo "atributo" (water,fire,wind...) e assim foi criada uma nova tabela para o armazenamento dos mesmos junto com um "ID" próprio.
    Foi necessário também a pesquisa a respeito de como implementar herança, já que foi necessário a sua utilização no banco de dados usando o MySql.

###12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/




