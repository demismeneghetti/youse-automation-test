class SignUpUser < SitePrism::Page

element :nome_text, 'input#user_name'
element :email_text, 'input#user_email'
element :senha_text, 'input#user_password'
element :confirmar_senha_text, 'input#user_password_confirmation'
element :enviar_cadastro_button, 'input.button.button'

  def cadastro_usuario(nome, email, senha)
    self.nome_text.set nome
    self.email_text.set email
    self.senha_text.set senha
    self.confirmar_senha_text.set senha
    self.enviar_cadastro_button.click
  end

end
