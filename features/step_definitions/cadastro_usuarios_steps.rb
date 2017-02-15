Dado(/^que eu esteja na tela de cadastro$/) do
  visit 'http://www.youse.com.br'
  Home.new.minha_conta.click
  SignInUser.new.cadastre_se
end

Quando(/^eu realizar o preenchimento dos campos e solicitar o cadastro$/) do
   expect(page).to have_title 'Cadastre-se Para Ser Um Youser | Youse'
   SignUpUser.new.cadastro_usuario(ENV['NOME'], ENV['EMAIL'], ENV['SENHA'])
end

Entao(/^o cadastro inicial estará completo$/) do
  expect(page).to have_content 'Ops, você ainda não tem nenhum seguro Youse. =('
  expect(page).to have_content 'Olá, Demis'
end

Entao(/^os campos com dados divergentes deverão apresentar mensagem de erro$/) do
  expect(page).to have_content 'não é igual a Senha'
end
