#language: pt

Funcionalidade: Consultar estabelecimentos
  Como usuario do sistema
  Eu quero fazer solicitações GET no microservico
  Para que eu possa obter informaçoes sobre estabelecimentos

Cenário: Consultar tipo do estabelecimento
  Quando realiza a requisicao de consulta
  E valido o codigo 200
  Entao devera retornar a chave "typeOfEstablishment"
  