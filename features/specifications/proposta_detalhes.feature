# language: pt
Funcionalidade: Proposta Detalhes

@smoke @proposta_detalhes
Cenario: Realizar solicitação de proposta através dos detalhes
  Dado que eu esteja nos detalhes do seguro auto
  Quando eu preencher os dados e submeter a proposta
  Entao a aplicação apresentará xyz
