class SignUp < SitePrism::Page

element :nome_text, 'input#user_name'
element :email_text, 'input#user_email'
element :senha_text, 'input#user_password'
element :confirmar_senha_text, 'input#user_password_confirmation'
element :enviar_cadastro_button, 'input.button.button'

  def cadastro_usuario
    @user = OpenStruct.new
    @user.nome = Faker::Name.name_with_middle
    @user.email = Faker::Internet.free_email
    @user.senha = '147258369'
  
    self.nome_text.set @user.nome
    self.email_text.set @user.email
    self.senha_text.set @user.senha
    self.confirmar_senha_text.set @user.senha
    self.enviar_cadastro_button.click
  end

end
