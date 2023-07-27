# Faz uma requisição de consulta tipo do estabelecimento através do método 'consultProduct'
Quando('realiza a requisicao de consulta') do
  @response = @service.call(Establishment).consultProduct
end

# Verifica se o código de resposta da requisição é igual ao valor esperado
Quando('valido o codigo {int}') do |code|                                                                                                                                                                               
  expect(@response.code).to eql code
end

# Verifica se a resposta da API contém a chave especificada e valida a estrutura da resposta contra um esquema JSON
Entao('devera retornar a chave {string}') do |key_name|                                                                                                                                                                  
  # Obtém o tipo de estabelecimento com base na chave especificada
  establishment = @service.call(Establishment).catEstablishment(@response, key_name)

  # Exibe o tipo de estabelecimento encontrado e printa no relatorio
  content = "Type of Establishment: #{establishment}"
  @service.call(Establishment).publishEstablishment(content)

  # Verifica se a resposta da API corresponde ao esquema JSON 'list_Products_Establishment'
  expect(@response.body).to match_json_schema('list_Products_Establishment')
end
