Dado(/^que eu esteja na tela de login$/) do
  visit 'http://www.youse.com.br'
  Home.new.minha_conta.click
end

Quando(/^eu realizar o preenchimento dos campos e logar$/) do
  SignInUser.new.login(ENV['EMAIL'], ENV['SENHA'])
  expect(page).to have_content {ENV['NOME']}
end

Quando(/^eu realizar o preenchimento do campo com usuário invalido$/) do
  SignInUser.new.email_text.set (ENV['EMAIL_INVALIDO'])
end

Entao(/^a aplicação apresentará a página inicial logada$/) do
  expect(page).to have_content 'Que tal um seguro 100% online e direto com você?'
end

E(/^realizar o logoff do usuário$/) do
  SignInUser.new.logout
end

Entao(/^a aplicação apresentará a pagina inicial deslogada$/) do
  expect(page).to have_content 'Cote, personalize e contrate.'
end

Entao(/^os campos com dados inválidos deverão apresentar mensagem de erro$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
