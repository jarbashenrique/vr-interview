# Automação de Testes com Cypress - Desafio VR

## Descrição do Projeto

Este projeto contém a automação de testes para a entrevista da VR, utilizando a ferramenta Cypress para testes automatizados em aplicações web.

O objetivo deste desafio é verificar a funcionalidade e a integridade de uma aplicação web específica.

## Pré-requisitos

Antes de executar os testes, certifique-se de que você tenha as seguintes dependências instaladas em seu sistema:

- Node.js (https://nodejs.org)
- NPM (geralmente instalado junto com o Node.js)

## Configuração do Ambiente

Siga os passos abaixo para configurar o ambiente e executar os testes localmente:

1. Clone o repositório:

```
git clone https://github.com/jarbashenrique/VR-interview.git
```

2. Acesse o diretório do projeto:

```
cd test-cypress
```

3. Instale as dependências do projeto:

```
npm install
```

## Executando os Testes

Para executar os testes, utilize o seguinte comando:

```
npx cypress run reports
```

Esse comando iniciará a execução dos testes usando o Cypress. Os resultados serão exibidos no terminal e um reporte na pasta Cypress.

## Estrutura dos Testes

A estrutura do projeto de automação de testes é organizada da seguinte forma:

```
├── cypress                  // Diretório contendo os testes end-to-end usando Cypress
│   ├── e2e                  // Diretório dos testes end-to-end específicos do projeto "vr"
│   │   └── vr.spec.cy.js    // Arquivo de teste end-to-end para o projeto "vr"
│   ├── fixtures             // Diretório contendo arquivos de dados para os testes (fixtures)
│   ├── reports              // Diretório contendo relatórios de testes
│   ├── screenshots          // Diretório contendo capturas de tela de falhas de testes
│   ├── support              // Diretório contendo código de suporte para os testes
│   │   ├── commands.js      // Arquivo com comandos personalizados do Cypress
│   │   ├── config           // Diretório contendo configurações do projeto
│   │   │   └── elements.js  // Arquivo com seletores CSS de elementos da página
│   │   ├── e2e.js           // Arquivo com configurações específicas para testes end-to-end
│   │   └── pages            // Diretório contendo módulos de página para os testes
│   │       └── HomePage.js  // Módulo de página representando a página inicial do site
│   └── videos               // Diretório contendo gravações de vídeo dos testes
├── cypress.config.js        // Arquivo de configuração do Cypress
├── package.json             // Arquivo de manifesto do Node.js com dependências e scripts
├── package-lock.json        // Arquivo de controle de versão das dependências
└── README.md                // Arquivo README com informações sobre o projeto
```

## Feedback

Se você tiver algum feedback ou encontrar problemas nos testes, sinta-se à vontade para entrar em contato diretamente comigo.

Obrigado pela oportunidade!

Atenciosamente,
Jarbas
