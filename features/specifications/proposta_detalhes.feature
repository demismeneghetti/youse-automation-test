# language: pt
Funcionalidade: Proposta Detalhes

@smoke @proposta_home
Cenario: Realizar solicitação de proposta através dos detalhes
  Dado que eu esteja na home
  Quando eu preencher selecionar cotação online de seguro auto
  E eu preencher os dados e submeter a proposta
  Entao a aplicação apresentará a página para pagamento

@smoke @proposta_detalhes
Cenario: Realizar solicitação de proposta através dos detalhes
  Dado que eu esteja nos detalhes do seguro auto
  Quando eu preencher os dados e submeter a proposta
  Entao a aplicação apresentará a página para pagamento
