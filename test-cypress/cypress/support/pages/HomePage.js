// Importar o suporte para eventos reais (real events) do Cypress, que permite simular eventos mais realistas durante os testes.
import 'cypress-real-events/support';

// Importar o objeto 'elements' que contém seletores para elementos da página,
import elements from '../config/elements';

// Classe que representa a página inicial do site e contém ações e verificações relacionadas.
class HomePage {
  // Método para visitar a página inicial do site.
  visit() {
    cy.visit('https://www.vr.com.br/');
  }

  // Método para acessar o submenu "Where" após passar o mouse sobre o botão "You" no menu.
  access() {
    cy.get(elements.menuYou).realHover();
    cy.get(elements.menuWhere).click();
  }

  // Método para verificar se o elemento do mapa está visível na página.
  mapVisible() {
    cy.get(elements.map).should('exist');
  }
}

// Exportar uma instância da classe HomePage, para que possa ser utilizada em outros arquivos.
export default new HomePage();
