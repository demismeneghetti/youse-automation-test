class Account < SitePrism::Page

elements :cotacao_online, 'a.button-rounded.button-rounded__orange'

def cotacao_online_residencial
  self.cotacao_online.first.click
end

def cotacao_online_auto
  self.cotacao_online.second.click
end

def cotacao_online_vida
  self.cotacao_online.third.click  
end

end
