Dado(/^que eu esteja nos detalhes do seguro auto$/) do
  visit 'http://www.youse.com.br'
  Home.new.saiba_mais[1].click
end

Quando(/^eu preencher os dados e submeter a proposta$/) do
  expect(page).to have_content 'Oi, a gente quer conhecer você melhor, é rapidinho'
  Order.new.preenche_proposta(ENV['NOME'], ENV['TIPO'], ENV['TELEFONE'], ENV['EMAIL'])
  expect(page).to have_content 'Agora, fale um pouquinho sobre o seu carro.'
  OrderPriceRequirements.new.preenche_proposta_pricing_requirements(ENV['MARCA'], ENV['MODELO'], ENV['ANO'], ENV['VERSAO'], ENV['USO'], ENV['PROPRIEDADE'], ENV['DISPONIBILIDADE'], ENV['CEP'], ENV['SEXO'], ENV['DATA_NASCIMENTO'], ENV['ESTADO_CIVIL'], ENV['PRINCIPAL_CONDUTOR'], ENV['COBERTURA_EXTRA'], ENV['SINISTRO'])
  expect(page).to have_content 'Essa é a parte mais legal:'
  CoveragesSelection.new.proximo_passo_button.click
  expect(page).to have_content 'Sugestões de Assistências Youse para vc.'
  AssistancesSelection.new.proximo_passo_button.click
end

Entao(/^a aplicação apresentará a página para pagamento$/) do
  expect(page).to have_content 'Aeee! Estamos quase lá.'
end

#Pricing Requirements
#HONDA, CIVIC, 2014, CIVIC SEDAN EXR 2.0 FLEXONE 16V AUT. 4P (Gasolina/Flex), particular, já tenho, já estou utilizando, 05363000, masculino, 30111980, casado(a), sou, Não desejo, nunca tive
