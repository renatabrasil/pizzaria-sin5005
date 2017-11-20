Feature: Simple CRUD operation using employees
  In order to control my employees
  As a system's admin
  I want to be able to manage the employees registration

  Background:
    Given there is an employee with name "Trump" office "Gerente" salary "200000.0" workload "20" and telephone "(11) 99999-9999"
    Given there is an user with username "admin" and password "admin123"

#TODO: Implementar

# Create cases

  Scenario: Should be able to create a new employee
    Given I'm logged in as user
    Given I am on the home page
    Then I should see "Logout"
    When I go to the new employees form
    Then I should see "Cadastrar Funcionário"
    And I fill in "Nome" with "Jorge"
    And I fill in "Cargo" with "Vendedor"
    And I fill in "Salário" with "1200.0"
    And I fill in "Carga Horária" with "40"
    And I fill in "Telefone" with "(11) 99999-9999"
    When I press the "Salvar" button
    Then I should see "Listar Funcionários"

# Pending: especificar melhor
  Scenario: User cannot create a new employee
    Given I'm logged in as user
    Given I am on the home page
    When I go to the new employees form
    Then I should see "Cadastrar Funcionário"
    And I fill in "Nome" with "Jorge"
    When I press the "Salvar" button
    Then I should see "erro(s) encontrado(s)"

# Fim

# Edit cases

  Scenario: Should be able to edit employee
    Given I'm logged in as user
    Given I am on the home page
    Then I should see "Logout"
    When I go to the employees page
    Then I should see "Listar Funcionários"
    And I should see "Trump"
    And I click on "Editar" in "Trump" row
    And I should see "Editar Funcionário"
    And I fill in "Nome" with "Hillary"
    And I fill in "Cargo" with "Vendedor"
    And I fill in "Salário" with "5000.0"
    And I fill in "Carga Horária" with "36"
    And I fill in "Telefone" with "(11) 99999-9999"
    And I press the "Salvar" button
    Then I should see "Listar Funcionários"

  # Pending: especificar melhor
  Scenario: User cannot edit a existing employee
    Given I'm logged in as user
    Given I am on the home page
    When I go to the employees page
    Then I should see "Listar Funcionários"
    And I should see "Trump"
    And I click on "Editar" in "Trump" row
    And I fill in "Nome" with ""
    When I press the "Salvar" button
    Then I should see "erro(s) encontrado(s)"

  # Fim
  Scenario: Should be able to read a existing employee
    Given I'm logged in as user
    Given I am on the home page
    Then I should see "Logout"
    When I go to the employees page
    Then I should see "Listar Funcionários"
    And I should see "Trump"
    And I click on "Visualizar" in "Trump" row
    Then I should see "Nome: Trump"
    Then I should see "Cargo: Gerente"
    Then I should see "Salário: R$ 200.000,00"
    Then I should see "Carga Horária (h/semana): 20"
    And I should see "Telefone: (11) 99999-9999"

  # Pending: especificar melhor
  Scenario: User cannot read a existing employee
    Given I am on the home page
    Then I should not see "Listar Funcionários"

  Scenario: Should be able to read employees
    Given I'm logged in as user
    Given I am on the home page
    Then I should see "Logout"
    When I go to the employees page
    Then I should see "Listar Funcionários"
    And I should see "Nome"
    And I should see "Cargo"
    And I should see "Salário (R$)"
    And I should see "Carga Horária (h/semana)"
    And I should see "Telefone"
    And I should see "Trump"
    And I should see "Gerente"
    And I should see "200.000,00"
    And I should see "20"
    And I should see "(11) 99999-9999"

  # Pending: especificar melhor
  Scenario: User cannot read employees
    Given I am on the home page
    Then I should not see "Listar Funcionários"

  Scenario: Should be able to delete employees
    Given I'm logged in as user
    Given I am on the home page
    Then I should see "Logout"
    When I go to the employees page
    Then I should see "Listar Funcionários"
    And I should see "Trump"
    And I click on "Excluir" in "Trump" row
    And I should not see "Trump"

  # Pending: especificar melhor
  Scenario: User cannot delete employees
    Given I am on the home page
    Then I should not see "Listar Funcionários"
