# language: pt
Funcionalidade: Solicitação de Proposta de Seguros

@proposta_detalhes @all
Cenario: Realizar solicitação de proposta através dos detalhes
  Dado que eu esteja nos detalhes do seguro auto
  Quando eu preencher os dados e submeter a proposta
  Entao a aplicação apresentará a página para pagamento
