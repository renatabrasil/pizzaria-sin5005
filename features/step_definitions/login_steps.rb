Given(/^I'm logged in as user$/) do
  User.create(username: "admin", email: "admin@gmail.com", password: "admin123")
  visit new_user_session_path
  fill_in :placeholder => "nome-de-usuario", :with => "admin"
  fill_in :placeholder => "senha", :with => "admin123"
  # fill_in "Username", :with => "admin"
  # fill_in "Senha", :with => "admin123"
  click_button "Log in"
end
