Dado(/^que eu esteja nos detalhes do seguro auto$/) do
  visit 'http://www.youse.com.br'
  Account.new.cotacao_online_auto
end
