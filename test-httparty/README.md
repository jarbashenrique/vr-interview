# Automação de Testes com HTTParty - Desafio VR

## Descrição do Projeto

Este projeto contém a automação de testes para a entrevista da VR, utilizando a biblioteca HTTParty para realizar chamadas de API em Ruby.

O objetivo deste projeto é testar a integração da API e garantir que ela esteja funcionando conforme o esperado.

## Pré-requisitos

Antes de executar os testes, certifique-se de ter as seguintes dependências instaladas em seu ambiente:

- Ruby (versão 3.2.2gem)
- Gem HTTParty (gem 'httparty', '~> 0.21.0')

## Configuração do Ambiente

Siga os passos abaixo para configurar o ambiente e executar os testes localmente:

1. Clone o repositório:

```
git clone https://github.com/jarbashenrique/VR-interview.git
```

2. Acesse o diretório do projeto:

```
cd test-httparty
```

3. Instale as dependências do projeto:

```
bundle install
```

## Executando os Testes

Para executar os testes, utilize o seguinte comando:

```
cucumber
```

Esse comando iniciará a execução dos testes de API utilizando a biblioteca HTTParty. Os resultados serão exibidos no terminal.

## Estrutura dos Testes

A estrutura do projeto de automação de testes é organizada da seguinte forma:

```
├── cucumber.yml                                        // Arquivo de configuração do Cucumber para execução de cenários
├── features                                            // Diretório contendo os arquivos de especificações Gherkin
│   ├── specs                                           // Diretório contendo os arquivos de especificações do estabelecimento
│   │   └── establishment.feature                       // Arquivo com especificações de cenários para funcionalidades do estabelecimento
│   ├── step_definitions                                // Diretório contendo os arquivos de definições de passos (step definitions)
│   │   └── establishment_step.rb                       // Arquivo com definições de passos para os cenários do estabelecimento
│   └── support                                         // Diretório contendo código de suporte para os testes
│       ├── config                                      // Diretório contendo configurações do ambiente
│       │   └── environments                            // Diretório contendo arquivos de ambiente (ex: dev, qa, prod)
│       │       └── dev.yml                             // Arquivo com configurações para o ambiente de desenvolvimento
│       ├── data                                        // Diretório contendo dados de testes (ex: JSON, XML)
│       │   └── schemas                                 // Diretório contendo esquemas de dados (ex: JSON schemas)
│       │       └── list_Products_Establishment.json    // Arquivo com esquema de lista de produtos de estabelecimento
│       ├── env.rb                                      // Arquivo de inicialização do Cucumber com carregamento de configurações
│       ├── hooks.rb                                    // Arquivo com hooks (ganchos) para executar ações antes/depois dos cenários
│       └── pages_services                              // Diretório contendo serviços de páginas (ex: métodos de interação com páginas)
│           └── establishment_service.rb                // Arquivo com serviços para a página de estabelecimento
├── Gemfile                                             // Arquivo contendo as dependências do projeto (gems)
├── Gemfile.lock                                        // Arquivo de controle de versão das dependências (lock file)
├── README.md                                           // Arquivo README com informações sobre o projeto
└── report                                              // Diretório contendo relatórios de testes
```

## Feedback

Se você tiver algum feedback ou encontrar problemas nos testes, sinta-se à vontade para entrar em contato diretamente comigo.

Obrigado pela oportunidade!

Atenciosamente,
Jarbas