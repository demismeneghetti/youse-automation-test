# language: pt
Funcionalidade: Realizar testes de login

@login_usuario_invalido @smoke
Cenario: Login de usuário inválido
  Dado que eu esteja na tela de login
  Quando eu realizar o preenchimento do campo com usuário invalido
  Entao os campos com dados inválidos deverão apresentar mensagem de erro

@login_usuario_valido @smoke
Cenario: Login de usuário válido
  Dado que eu esteja na tela de login
  Quando eu realizar o preenchimento dos campos e logar
  Entao a aplicação apresentará a página inicial logada

@login_logout_usuario @smoke
Cenario: Cadastro de usuário válido
  Dado que eu esteja na tela de login
  Quando eu realizar o preenchimento dos campos e logar
  E realizar o logoff do usuário
  Entao a aplicação apresentará a pagina inicial deslogada
