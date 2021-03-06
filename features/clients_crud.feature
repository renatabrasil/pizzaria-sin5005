Feature: Simple CRUD operation using clients
  In order to control my clients
  As a system's admin
  I want to be able to manage the clients registration

  Background:
    Given there is a client with name "Jose" phone "99999-9999" and address "Rua das Laranjeiras, 9999"
    Given there is an user with username "admin" and password "admin123"

#TODO: Implementar

# Create cases

  Scenario: Should be able to create a new client
    Given I'm logged in as user
    Given I am on the home page
    Then I should see "Logout"
    When I go to the new clients form
    Then I should see "Cadastrar Cliente"
    And I fill in "Nome" with "Jose"
    And I fill in "Telefone" with "99999-9999"
    And I fill in "Endereço" with "Rua das Laranjeiras, 9999"
    When I press the "Salvar" button
    Then I should see "Listar Clientes"

# Pending: especificar melhor
  Scenario: User cannot create a new client
    Given I'm logged in as user
    Given I am on the home page
    When I go to the new clients form
    Then I should see "Cadastrar Cliente"
    And I fill in "Nome" with "Jose"
    And I fill in "Endereço" with "Rua das Laranjeiras, 9999"
    When I press the "Salvar" button
    Then I should see "erro(s) encontrado(s)"

# Fim

# Edit cases

  Scenario: Should be able to edit client
    Given I'm logged in as user
    Given I am on the home page
    Then I should see "Logout"
    When I go to the clients page
    Then I should see "Listar Clientes"
    And I should see "Jose"
    And I click on "Editar" in "Jose" row
    And I should see "Editar cliente"
    And I fill in "Nome" with "Maria"
    And I fill in "Telefone" with "88888-8888"
    And I fill in "Endereço" with "Rua das Tulipas, 8888"
    And I press the "Salvar" button
    Then I should see "Listar Clientes"

  # Pending: especificar melhor
  Scenario: User cannot edit a existing client
    Given I'm logged in as user
    Given I am on the home page
    When I go to the clients page
    Then I should see "Listar Clientes"
    And I should see "Jose"
    And I click on "Editar" in "Jose" row
    And I fill in "Nome" with ""
    When I press the "Salvar" button
    Then I should see "erro(s) encontrado(s)"

  # Fim
  Scenario: Should be able to read a existing client
    Given I'm logged in as user
    Given I am on the home page
    Then I should see "Logout"
    When I go to the clients page
    Then I should see "Listar Clientes"
    And I should see "Jose"
    And I click on "Visualizar" in "Jose" row
    Then I should see "Nome: Jose"
    And I should see "Telefone: 99999-9999"
    And I should see "Endereço: Rua das Laranjeiras, 9999"

  # Pending: especificar melhor
  Scenario: User cannot read a existing client
    Given I am on the home page
    Then I should not see "Listar Clientes"

  Scenario: Should be able to read clients
    Given I'm logged in as user
    Given I am on the home page
    Then I should see "Logout"
    When I go to the clients page
    Then I should see "Listar Clientes"
    And I should see "Nome"
    And I should see "Telefone"
    And I should see "Endereço"
    And I should see "Jose"
    And I should see "99999-9999"
    And I should see "Rua das Laranjeiras, 9999"

  # Pending: especificar melhor
  Scenario: User cannot read clients
    Given I am on the home page
    Then I should not see "Listar Clientes"

  Scenario: Should be able to delete clients
    Given I'm logged in as user
    Given I am on the home page
    Then I should see "Logout"
    When I go to the clients page
    Then I should see "Listar Clientes"
    And I should see "Jose"
    And I click on "Excluir" in "Jose" row
    And I should not see "Jose"

  # Pending: especificar melhor
  Scenario: User cannot delete clients
    Given I am on the home page
    Then I should not see "Listar Clientes"
