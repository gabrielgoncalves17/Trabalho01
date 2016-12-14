"""
Tivemos de usar um try pois alguns tweets tinham emojis devido a isso dava erro na hora do insert, agora ignoro os tweet com emojis e pego os que nao dao erro.
"""


import tweepy
import pandas
import MySQLdb
from sqlalchemy import create_engine
#criacao banco
parametros_conexao='mysql://vinigame15:19961411vinicius@vinigame15.mysql.pythonanywhere-services.com/vinigame15$trabalho?charset=utf8'
engine = create_engine(parametros_conexao)
conn = engine.connect()
tabela='buscas2'
resultado = conn.execute('CREATE TABLE if not exists '+tabela+' (nome_twitter varchar(255),texto varchar(255),local varchar(255))ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;')
#fim criacao
consumer_key = "w2CjzxRaoEEUPxAYVkovDsh9x"
consumer_secret = "CFQerTTGkXADDoSfIAc3uwcBIsTqkiADHzxEViLkS6BaUIEzML"
access_token = "806569405090037764-zcYgxjwWyKDB6p8BtdU6OfKgkfjD8uz"
access_token_secret = "zf5WmPub6yZ4sQsKK9vP9nbvU5DaX73dhNAkbWRuWuCTX"


auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_token_secret)
api = tweepy.API(auth)

public_tweets = api.home_timeline()
buscar = ["YUGIOH" or "yugioh" or "YU-GI-OH" or "yu-gi-oh"]
buscar = api.search(q=buscar)
for tweet in buscar:
    try:
        nome = tweet.user.screen_name
        texto = tweet.text
        localizacao = "Localizacao: " + tweet.user.location
        #print ("""insert into """ + tabela + """(nome_twitter, texto, local)values('""" + str(nome) + """','""" + str(texto) + """','""" + str(localizacao) + """');""")
        busca = """insert into """ + tabela + """(nome_twitter, texto, local)values('""" + str(nome) + """','""" + str(texto) + """','""" + str(localizacao) + """');"""
        resultado = conn.execute(busca)
    except:
        continue

resultado = conn.execute("select nome_twitter, texto, local from " + tabela)
df = pandas.DataFrame(resultado.fetchall())
print(df)