# language: pt
Funcionalidade: Realizar Testes de Cadastro de Novos Usuários

@cadastro_usuario_valido @all
Cenario: Cadastro de usuário válido
  Dado que eu esteja na tela de cadastro
  Quando eu realizar o preenchimento dos campos e solicitar o cadastro
  Entao o cadastro inicial estará completo
