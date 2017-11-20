Feature: Simple CRUD operation using pizzas
  In order to control my pizzas
  As a system's admin
  I want to be able to manage the pizzas registration

  Background:
    Given there is a pizza with name "Calabresa" and price "60,00"
    Given there is an user with username "admin" and password "admin123"

#TODO: Implementar

# Create cases

  Scenario: Should be able to create a new pizza
    Given I'm logged in as user
    Given I am on the home page
    Then I should see "Logout"
    When I go to the new pizzas form
    Then I should see "Cadastrar Pizza"
    And I fill in "Nome" with "Frango"
    And I fill in "Preço" with "30.0"
    When I press the "Salvar" button
    Then I should see "Listar Pizzas"

# Pending: especificar melhor
  Scenario: User cannot create a new pizza
    Given I'm logged in as user
    Given I am on the home page
    When I go to the new pizzas form
    Then I should see "Cadastrar Pizza"
    And I fill in "Nome" with "Frango"
    When I press the "Salvar" button
    Then I should see "erro(s) encontrado(s)"

# Fim

# Edit cases

  Scenario: Should be able to edit pizza
    Given I'm logged in as user
    Given I am on the home page
    Then I should see "Logout"
    When I go to the pizzas page
    Then I should see "Listar Pizzas"
    And I should see "Calabresa"
    And I click on "Editar" in "Calabresa" row
    And I should see "Editar Pizza"
    And I fill in "Nome" with "Atum"
    And I fill in "Preço" with "72.0"
    And I press the "Salvar" button
    Then I should see "Listar Pizzas"

  # Pending: especificar melhor
  Scenario: User cannot edit a existing pizza
    Given I'm logged in as user
    Given I am on the home page
    When I go to the pizzas page
    Then I should see "Listar Pizzas"
    And I should see "Calabresa"
    And I click on "Editar" in "Calabresa" row
    And I fill in "Nome" with ""
    When I press the "Salvar" button
    Then I should see "erro(s) encontrado(s)"

  # Fim
  Scenario: Should be able to read a existing pizza
    Given I'm logged in as user
    Given I am on the home page
    Then I should see "Logout"
    When I go to the pizzas page
    Then I should see "Listar Pizzas"
    And I should see "Calabresa"
    And I click on "Visualizar" in "Calabresa" row
    Then I should see "Nome: Calabresa"
    And I should see "Preço (R$): 60,00"

  # Pending: especificar melhor
  Scenario: User cannot read a existing pizza
    Given I am on the home page
    Then I should not see "Listar Pizzas"

  Scenario: Should be able to read pizzas
    Given I'm logged in as user
    Given I am on the home page
    Then I should see "Logout"
    When I go to the pizzas page
    Then I should see "Listar Pizzas"
    And I should see "Nome"
    And I should see "Preço (R$)"
    And I should see "Calabresa"
    And I should see "60,00"

  # Pending: especificar melhor
  Scenario: User cannot read pizzas
    Given I am on the home page
    Then I should not see "Listar Pizzas"

  Scenario: Should be able to delete pizzas
    Given I'm logged in as user
    Given I am on the home page
    Then I should see "Logout"
    When I go to the pizzas page
    Then I should see "Listar Pizzas"
    And I should see "Calabresa"
    And I click on "Excluir" in "Calabresa" row
    And I should not see "Calabresa"

  # Pending: especificar melhor
  Scenario: User cannot delete pizzas
    Given I am on the home page
    Then I should not see "Listar Pizzas"
