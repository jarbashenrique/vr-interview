// Importar a função defineConfig do Cypress para criar uma configuração personalizada.
const { defineConfig } = require('cypress');

// Exportar a configuração personalizada usando defineConfig.
module.exports = defineConfig({
  e2e: {
    defaultCommandTimeout: 30000,
    viewportWidth: 1024,
    viewportHeight: 800
  },

  // Configurações para o relatório do Mochawesome.
  reporter: "mochawesome",
  reporterOptions: {
    charts: true,
    html: true,
    json: true,
    reportDir: "cypress/reports",
    reportFilename: "report",
    overwrite: true
  }
});
