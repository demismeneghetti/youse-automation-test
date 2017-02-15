class SignInUser < SitePrism::Page

  elements :cadastro, 'a.button.button--secondary'

  def cadastre_se
    self.cadastro.first.click
  end

end
