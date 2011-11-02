#encoding: utf-8

Dado /^que eu estou na pagina de formulario$/ do
  visit '/'
end

Quando /^eu informo minha altura com "([^"]*)"$/ do |altura|
  fill_in 'altura', :with => altura
end

Quando /^meu peso com "([^"]*)"$/ do |peso|
  fill_in 'peso', :with => peso
end
  

Quando /^clico em "([^"]*)"$/ do |botao|
  click_button(botao)
end

Então /^devo ver "([^"]*)"$/ do |imc|
  page.should have_content imc
end

Então /^sou avisado que estou com "([^"]*)"$/ do |mensagem|
  page.should have_content mensagem
end