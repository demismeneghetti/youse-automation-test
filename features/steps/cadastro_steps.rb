Dado(/^que eu acesse a home do portal Youse$/) do
  visit 'http://www.youse.com.br'
end

E(/^acesse a tela de cadatro$/) do
  Home.new.minha_conta.click
  SignInUser.new.cadastre_se
end

Quando(/^eu realizar o preenchimento dos campos de cadastro$/) do
 cadastro = SignUpUser.new
 cadastro.nome_text.set 'Demis'
 cadastro.email_text.set ENV['EMAIL']
 cadastro.senha_text.set ENV['SENHA']
 cadastro.confirmar_senha_text.set ENV['SENHA']
end

Quando(/^clicar no botão enviar cadastro$/) do
  SignUpUser.new.enviar_cadastro_button.click
end

Entao(/^o cadastro inicial estará completo$/) do
  expect(page).to have_content 'Ops, você ainda não tem nenhum seguro Youse. =('
  expect(page).to have_content 'Olá, Demis'
end
