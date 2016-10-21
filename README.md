# TRABALHO 01
Trabalho desenvolvido durante a disciplina de BD

#Sumário

###1	COMPONENTES<br>
Vinicius Barbosa Martins<br>
Kelvin Lehrback<br>
###2	INTRODUÇÃO E MOTIVAÇAO<br>
Este documento contém a especificação do projeto do banco de dados <nome do projeto> e motivação da escolha realizada. <br>

###3	MINI-MUNDO<br>
Descrever o mini-mundo. Não deve ser maior do que 30 linhas <br>

###4	RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
neste ponto a codificação não e necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas <br>

Sugestão: https://balsamiq.com/products/mockups/<br>

![Alt text](https://github.com/discipbd1/trab01/blob/master/balsamiq.png?raw=true "Title")


###5	MODELO CONCEITUAL<br>
    5.1 NOTACAO ENTIDADE RELACIONAMENTO
![Alt text](https://github.com/viniciusgame15/BDmoises/blob/master/yugiohBD.jpg?raw=true "Modelo Conceitual")
    
    5.2 NOTACAO UML (Caso esteja fazendo a disciplina de analise)

####5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

####5.2 DECISÕES DE PROJETO
    [atributo]: [descrição da decisão]
    
    EXEMPLO:
    a) Campo endereço: em nosso projeto optamos por um campo multivalorado e composto, pois a empresa 
    pode possuir para cada departamento mais de uma localização... 
    b) justifique!

####5.3 DESCRIÇÃO DOS DADOS 
    [objeto]: [descrição do objeto]
    
    USUARIO: Tabela que armazena as informações relativas ao usuario.
    cod_usr: Campo que armazena a chave primaria que identifica o usuario.
    nome_completo: Campo que armazena o nome do completo do usuario do sistema.
    telefone: Campo que armazena o telefone do usuario.
    data_nascimento: Campo que armazena data de nascimento do usuario.
    email: Campo que armazena o email do usuario.
    sexo: Campo que armazena o sexo do usuario.
    nome_usuario: Campo que armazena o nome de usuario.
    senha: Campo que armazena a senha do usuario.
    pergunta_secreta: Campo que armazena a pergunta que sera utilizada para recuperação de senha do usuario.
    resposta_secreta: Campo que armazena a resposta que sera utilizada para recuperação de senha do usuario.
    ENDEREÇO: Tabela que armazena informações de endereço do usuario.
    cod_endereço: Campo que armazena a chave primaria da tabela ENDEREÇO.
    cep: Campo que armazena o cep do usuario.
    estado: Campo que armazena o estado do usuario
    rua: Campo que armazena a rua do usuario.
    cidade: Campo que armazena cidade do usuario
    DECK: Tabela que armazena informações do deck referente ao usuario.
    cod_deck: Campo que armazena chave primaria da tabela DECK.
    quantidade_cartas: Campo que armazena a quantidade cartas do deck.
    nome_deck: Campo que armazena o nome do deck.
    data_criação: Campo que armazena a data de criação do deck
    CARTA: Tabela que armazena informações referente as cartas.
    id_carta: Campo que armazena o numero de serie da carta.
    nome_carta: Campo que armazena o nome da carta.
    descricao: Campo que armazena descrição da carta.
    ban_list: Campo que armazena a situação da carta na lista de banimentos.
    CARTA_MONSTRO: Tabela que armazena informações da carta monstro.
    tipo_monstro: Campo que armazena o tipo do monstro.
    ataque: Campo que armazena o valor do ataque.
    defesa: Campo que armazena o valor de defesa.
    level: Campo que armazena o level da carta.
    atributo_monstro: Campo que armazena o atributo do monstro.
    CARTA_MAGICA: Tabela que armazena o informações da carta magica.
    tipo_magica: Campo que armazena tipo de carta magica.
    CARTA_ARMADILHA: Tabela que armazena informações da carta armadilha.
    tipo_armadilha:Campo que armazena tipo da carta armadilha.
    
    
    
    


###6	MODELO LÓGICO<br>
###7	MODELO FÍSICO<br>
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




