Feature: Simple CRUD operation using clients
  In order to control my clients
  As a system's admin
  I want to be able to manage the clients registration

  Scenario: Should be able to create a new client
    Given I am on the home page
    When I go to the new clients form
    And I fill in "Nome" with "Jose"
    And I fill in "Telefone" with "99999-9999"
    And I fill in "Endereço" with "Rua das Laranjeiras, 9999"
    When I press the "Create Client" button
    Then I should see "Nome: Jose"
    Then I should see "Telefone: 99999-9999"
    Then I should see "Endereço: Rua das Laranjeiras, 9999"

  Scenario: Should be able to read a existing client
    Given I am on the home page
    When I click the "Listar Clientes" link
    Then I should see "Listar Clientes"
