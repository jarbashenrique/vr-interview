# Importa as bibliotecas necessárias para o projeto.
require 'cucumber' 
require 'httparty' 
require 'report_builder' 
require 'rspec' 
require 'json_matchers/rspec' 
require 'cucumber/formatter/html'


# Verifica se a variável de ambiente ENV_TYPE está definida e atribui o valor "dev" caso não seja fornecido nenhum valor.
ENV['ENV'] ||= 'dev'

# Carrega a configuração do ambiente com base na variável de ambiente ENV_TYPE.
begin
  ENV_CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/environments/#{ENV['ENV']}.yml"))
rescue Errno::ENOENT, Psych::SyntaxError => e
  puts "Erro ao carregar o arquivo de configuração: #{e.message}"
  exit(1)
end

# Define o diretório onde estão localizados os esquemas JSON para validação de respostas.
JsonMatchers.schema_root = File.join(Dir.pwd, "features/support/data/schemas")


