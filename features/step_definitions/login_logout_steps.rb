Dado(/^que eu esteja na tela de login$/) do
  visit 'http://www.youse.com.br'
  Home.new.minha_conta.click
end

Quando(/^eu realizar o preenchimento dos campos e logar$/) do
  SignIn.new.login
  expect(page).to have_content 'Usuario'
end

# Quando(/^eu realizar o preenchimento do campo com usuário invalido$/) do
#   SignInUser.new.email_text.set ''
# end

Entao(/^a aplicação apresentará a página inicial logada$/) do
  expect(page).to have_content 'Que tal um seguro 100% online e direto com você?'
end

E(/^realizar o logoff do usuário$/) do
  SignIn.new.logout
end

Entao(/^a aplicação apresentará a pagina inicial deslogada$/) do
  expect(page).to have_content 'Cote, personalize e contrate.'
end
