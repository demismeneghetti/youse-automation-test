class Order < SitePrism::Page

element :meu_nome_e_text, 'input#auto_order_flow_lead_person_data_lead_person_attributes_name'
element :estou_fazendo_o_seguro_combo, 'select#auto_order_flow_lead_person_data_insured_person_attributes_same_as_lead_person'
element :pode_me_ligar_text, 'input#auto_order_flow_lead_person_data_lead_person_attributes_phone'
element :mandar_um_email_para_text, 'input#auto_order_flow_lead_person_data_lead_person_attributes_email'
element :proximo_passo_button, 'input.button.button--primary'

  def preenche_proposta
    @user = OpenStruct.new
    @user.nome = Faker::Name.name_with_middle
    @user.telefone = '11988776655'
    @user.email = Faker::Internet.free_email

    self.meu_nome_e_text.set @user.nome
    # self.estou_fazendo_o_seguro_combo.select @user.tipo
    self.pode_me_ligar_text.set @user.telefone
    self.mandar_um_email_para_text.set @user.email
    self.proximo_passo_button.click
  end
end
