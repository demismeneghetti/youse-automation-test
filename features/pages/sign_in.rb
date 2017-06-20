class SignIn < SitePrism::Page

elements :cadastro, 'a.button.button--secondary'
element :email_text, 'input#email'
element :senha_text, 'input#user_password'
element :proximo_passo_button, 'input.button.button'
element :entrar_button, 'input.button.button'
elements :drop_dow_minha_conta_logada, 'a.account-header__account-link'
element :sair_link, 'a#track_logout'

  def login
    $user = OpenStruct.new
    $user.email = 'usuario_teste@gmail.com'
    $user.senha = '147258369'

    self.email_text.set $user.email
    self.proximo_passo_button.click
    self.senha_text.set $user.senha
    self.entrar_button.click
  end

  def logout
    self.drop_dow_minha_conta_logada.first.click
    self.sair_link.click
  end
end
