Dado(/^que eu esteja nos detalhes do seguro auto$/) do
  visit 'http://www.youse.com.br'
  Home.new.saiba_mais[1].click
end
