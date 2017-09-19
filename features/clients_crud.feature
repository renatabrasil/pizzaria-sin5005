Feature: Simple CRUD operation using clients
  In order to control my clients
  As a system's admin
  I want to be able to manage the clients registration

  Background:
    Given there is a client with name "Jose" phone "99999-9999" and address "Rua das Laranjeiras, 9999"

# Create cases

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

  Scenario: User cannot create a new client
    Given I am on the home page
    When I go to the new clients form
    And I fill in "Nome" with "Jose"
    And I fill in "Telefone" with "99999-9999"
    When I press the "Create Client" button
    Then I should see "Nome"
    Then I should see "Telefone"
    Then I should see "Endereço"

# Fim

# Edit cases

  Scenario: Should be able to edit client
    Given I am on the home page
    When I click the "Listar Clientes" link
    Then I should see "Listar Clientes"
    And I should see "Jose"
    And I click the "Editar" link
    When I fill in "Nome" with "Maria"
    And I fill in "Telefone" with "88888-8888"
    And I fill in "Endereço" with "Rua das Tulipas, 8888"
    And I press the "Update Client" button
    Then I should see "Nome: Maria"
    Then I should see "Telefone: 88888-8888"
    Then I should see "Endereço: Rua das Tulipas, 8888"

  Scenario: User cannot edit a existing client
    Given I am on the home page
    When I click the "Listar Clientes" link
    Then I should see "Listar Clientes"
    And I should see "Jose"
    And I click the "Editar" link
    And I fill in "Nome" with "Jose"
    And I fill in "Telefone" with "99999-9999"
    And I fill in "Endereço" with ""
    When I press the "Update Client" button
    Then I should see "Editar cliente"
    Then I should see "Nome"
    Then I should see "Telefone"
    Then I should see "Endereço"

# Fim

  Scenario: Should be able to read a existing client
    Given I am on the home page
    When I click the "Listar Clientes" link
    Then I should see "Listar Clientes"
    And I should see "Jose"
    And I click the "Visualizar" link
    Then I should see "Nome: Jose"
    And I should see "Telefone: 99999-9999"
    And I should see "Endereço: Rua das Laranjeiras, 9999"

  Scenario: Should be able to read clients
    Given I am on the home page
    When I click the "Listar Clientes" link
    Then I should see "Listar Clientes"
    And I should see "Nome"
    And I should see "Telefone"
    And I should see "Endereço"
    And I should see "Jose"
    And I should see "99999-9999"
    And I should see "Rua das Laranjeiras, 9999"


  Scenario: Should be able to delete clients
    Given I am on the home page
    When I click the "Listar Clientes" link
    Then I should see "Listar Clientes"
    And I should see "Jose"
    And I click the "Excluir" link
    And I should not see "Jose"
