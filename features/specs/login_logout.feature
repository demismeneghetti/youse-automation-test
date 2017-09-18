# language: pt
Funcionalidade: Realizar Testes de Login

@login_usuario_valido @all
Cenario: Login de usuário válido
  Dado que eu esteja na tela de login
  Quando eu realizar o preenchimento dos campos e logar
  Entao a aplicação apresentará a página inicial logada

@login_logout_usuario @all
Cenario: Cadastro de usuário válido
  Dado que eu esteja na tela de login
  Quando eu realizar o preenchimento dos campos e logar
  E realizar o logoff do usuário
  Entao a aplicação apresentará a pagina inicial deslogada
