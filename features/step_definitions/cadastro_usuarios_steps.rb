Dado(/^que eu esteja na tela de cadastro$/) do
  visit 'http://www.youse.com.br'
  Home.new.minha_conta.click
  SignIn.new.cadastro.first.click
end

Quando(/^eu realizar o preenchimento dos campos e solicitar o cadastro$/) do
  expect(page).to have_title 'Cadastre-se Para Ser Um Youser | Youse'
  SignUp.new.cadastro_usuario
end

Entao(/^o cadastro inicial estará completo$/) do
  expect(page).to have_content 'Ops, você ainda não tem nenhum seguro Youse. =('
  expect(page).to have_content "#{$nome}"
end

Entao(/^os campos com dados divergentes deverão apresentar mensagem de erro$/) do
  expect(page).to have_content 'não é igual a Senha'
end
