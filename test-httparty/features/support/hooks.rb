Before do
  # Este bloco será executado antes de cada cenário de teste.
  
  # Ele cria uma lambda que instancia a classe específica do cenário sendo testado,criando uma variavel global chamada @service
  @service = ->(klass) { klass.new }
end
