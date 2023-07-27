// Importar a página Home com as ações relacionadas a essa página
import home from '../../support/pages/HomePage';

describe('Acessar o subitem da barra', () => {
  // Descrição do cenário de teste específico
  it('Validar o mapa do Google', () => {
    // Acessar a página inicial do site
    home.visit();

    // Clicar no subitem da barra de navegação que leva ao mapa do Google
    home.access();

    // Verificar se o mapa do Google está visível na página
    home.mapVisible();
  });
});
