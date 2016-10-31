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

####5.1 Validação do Modelo Conceitual
    [Grupo01]: [Juliana]
    [Grupo02]: [Estevao]

####5.2 DECISÕES DE PROJETO
    [atributo]: [descrição da decisão]
    
    EXEMPLO:
    a) Campo endereço: em nosso projeto optamos por um campo multivalorado e composto, pois a empresa 
    pode possuir para cada departamento mais de uma localização... 
    b) justifique!

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
        Detalhamento sobre as informações e processo de obtenção ou geração dos dados.
        Referenciar todas as fontes referentes a :
        a) obtenção dos dados
        b) obtenção de códigos reutilizados
        c) fontes de estudo para desenvolvimento do projeto
        
####8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        a) inclusão das instruções para criação das tabelas e estruturas de amazenamento do BD
        b) inclusão das instruções de inserção dos dados nas referidas tabelas
        c) inclusão das instruções para execução de outros procedimentos necessários

###9	TABELAS E PRINCIPAIS CONSULTAS<br>
####9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS<br>
####9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE<br>
####9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS<br>
####9.4	CONSULTAS QUE USAM OPERADORES LIKE<br>
####9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS<br>
####9.6	CONSULTAS COM JUNÇÃO<br>
####9.7	CONSULTAS COM GROUP BY<br>
####9.8	CONSULTAS COM LEFT E RIGHT JOIN<br>
####9.9	CONSULTAS COM SELF JOIN E VIEW<br>
####9.10	SUBCONSULTAS<br>
###10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>
###11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>
###12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/




