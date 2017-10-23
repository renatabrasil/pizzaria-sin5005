Feature: Invalid login
    In order to test the login
    As an user
    I want to fail the login

    #TODO: Implementar
    Scenario: Invalid username
      Given I'm at the login page
      And there is an user with username "admin" and password "admin123"
      When I fill the placeholder "nome-de-usuario" field with "admim"
      And I fill the placeholder "senha" field with "admin123"
      And I press the "Log in" button
      Then I should see "Log in"

    Scenario: Invalid password
      Given I'm at the login page
      And there is an user with username "admin" and password "admin123"
      When I fill the placeholder "nome-de-usuario" field with "admin"
      And I fill the placeholder "senha" field with "admin1234"
      And I press the "Log in" button
      Then I should see "Log in"
