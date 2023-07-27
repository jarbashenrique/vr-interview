# Importa a biblioteca HTTParty, que fornece recursos para fazer requisições HTTP de forma simplificada.
class Establishment
  include HTTParty

  # Define a URL base para as requisições. A constante CONFIG['URL_BASE'] provavelmente é definida no arquivo de configuração.
  base_uri ENV_CONFIG['URL_BASE']

  def initialize(
    # Construtor da classe. Se precisar de uma autenticação, os parâmetros podem ser adicionados aqui.
  )
  end

  # Método para consultar produtos. Faz uma requisição GET para '/api-web/comum/enumerations/VRPAT'.
  def consultProduct
    result = self.class.get('/api-web/comum/enumerations/VRPAT')
    result
  end

  # Método para obter uma categoria de estabelecimento aleatória com base na chave fornecida.
  def catEstablishment(response, chave)
    data = JSON.parse(response.body)
    type_establishment = data[chave].sample

    type_establishment
  end
end
