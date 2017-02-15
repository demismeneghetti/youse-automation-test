# language: pt
Funcionalidade: Realizar cadastro de um novo usuário

@cadastro_usuario_senha_divergente @smoke
Cenario: Cadastro de usuário inválido
  Dado que eu esteja na tela de cadastro
  Quando eu realizar o preenchimento dos campos e solicitar o cadastro
  Entao os campos com dados divergentes deverão apresentar mensagem de erro

@cadastro_usuario_valido @smoke
Cenario: Cadastro de usuário válido
  Dado que eu esteja na tela de cadastro
  Quando eu realizar o preenchimento dos campos e solicitar o cadastro
  Entao o cadastro inicial estará completo
