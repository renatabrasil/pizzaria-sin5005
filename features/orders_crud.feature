Feature: Simple CRUD operation using orders
  In order to control my orders
  As a system's admin
  I want to be able to manage the orders registration

  Background:
    # Given there is a order with name "Calabresa" and price "60.0"
    Given there is an user with username "admin" and password "admin123"

#TODO: Implementar

# Create cases

  Scenario: Should be able to create a new order
    Given I'm logged in as user
    Given I am on the home page
    Then I should see "Logout"
    When I go to the new orders form
    # Then I should see "Cadastrar Pedido"
    # And I fill in "Nome" with "Frango"
    # And I fill in "Preço" with "30.0"
    # When I press the "Salvar" button
    # Then I should see "Listar Pedidos"

# Pending: especificar melhor
  Scenario: User cannot create a new order
    Given I'm logged in as user
    Given I am on the home page
    When I go to the new orders form
    Then I should see "Cadastrar Pedido"
    # And I fill in "Nome" with "Frango"
    # When I press the "Salvar" button
    # Then I should see "erro(s) encontrado(s)"

# Fim

# Edit cases

  Scenario: Should be able to edit order
    Given I'm logged in as user
    Given I am on the home page
    Then I should see "Logout"
    When I go to the orders page
    Then I should see "Listar Pedidos"
    # And I should see "Calabresa"
    # And I click on "Editar" in "Calabresa" row
    # And I should see "Editar Pedido"
    # And I fill in "Nome" with "Atum"
    # And I fill in "Preço" with "72.0"
    # And I press the "Salvar" button
    # Then I should see "Listar Pedidos"

  # Pending: especificar melhor
  Scenario: User cannot edit a existing order
    Given I'm logged in as user
    Given I am on the home page
    When I go to the orders page
    Then I should see "Listar Pedidos"
    # And I should see "Calabresa"
    # And I click on "Editar" in "Calabresa" row
    # And I fill in "Nome" with ""
    # When I press the "Salvar" button
    # Then I should see "erro(s) encontrado(s)"

  # Fim
  Scenario: Should be able to read a existing order
    Given I'm logged in as user
    Given I am on the home page
    Then I should see "Logout"
    When I go to the orders page
    Then I should see "Listar Pedidos"
    # And I should see "Calabresa"
    # And I click on "Visualizar" in "Calabresa" row
    # Then I should see "Nome: Calabresa"
    # And I should see "Preço: 60.0"

  # Pending: especificar melhor
  Scenario: User cannot read a existing order
    Given I am on the home page
    Then I should not see "Listar Pedidos"

  Scenario: Should be able to read orders
    Given I'm logged in as user
    Given I am on the home page
    Then I should see "Logout"
    When I go to the orders page
    Then I should see "Listar Pedidos"
    # And I should see "Nome"
    # And I should see "Preço"
    # And I should see "Calabresa"
    # And I should see "60.0"

  # Pending: especificar melhor
  Scenario: User cannot read orders
    Given I am on the home page
    Then I should not see "Listar Pedidos"

  Scenario: Should be able to delete orders
    Given I'm logged in as user
    Given I am on the home page
    Then I should see "Logout"
    When I go to the orders page
    Then I should see "Listar Pedidos"
    # And I should see "Calabresa"
    # And I click on "Excluir" in "Calabresa" row
    # And I should not see "Calabresa"

  # Pending: especificar melhor
  Scenario: User cannot delete orders
    Given I am on the home page
    Then I should not see "Listar Pedidos"
