class OrderPriceRequirements < SitePrism::Page

element :meu_carro_e_um_combo, 'select#auto_order_flow_pricing_requirements_vehicle_attributes_make'
element :modelo_carro_combo, 'select#auto_order_flow_pricing_requirements_vehicle_attributes_model'
element :ano_modelo_combo, 'select#auto_order_flow_pricing_requirements_vehicle_attributes_year'
element :versao_combo, 'select#auto_order_flow_pricing_requirements_vehicle_attributes_version'
element :e_o_seu_uso_e_combo, 'select#auto_order_flow_pricing_requirements_vehicle_attributes_usage'
element :eu_posse_carro_combo, 'select#auto_order_flow_pricing_requirements_vehicle_attributes_purchased'
element :e_uso_combo, 'select#auto_order_flow_pricing_requirements_vehicle_attributes_collected'
element :meu_carro_dorme_no_cep_text, 'input#auto_order_flow_pricing_requirements_vehicle_attributes_address_attributes_zipcode'
element :sou_do_sexo_combo, 'select#auto_order_flow_pricing_requirements_insured_person_attributes_gender'
element :nasci_em_text, 'input#auto_order_flow_pricing_requirements_insured_person_attributes_date_of_birth'
element :meu_estado_civil_e_combo, 'select#auto_order_flow_pricing_requirements_insured_person_attributes_marital_status'
element :principal_condutor_combo, 'select#auto_order_flow_pricing_requirements_driver_attributes_same_as_insured_person'
element :cobertura_idade_inferior_25_combo, 'select#auto_order_flow_pricing_requirements_driver_attributes_young_driver'
element :sobre_sinistro_combo, 'select#auto_order_flow_pricing_requirements_driver_attributes_years_since_last_claim'
element :proximo_passo_button, 'input.button.button--primary'

  def preenche_proposta_pricing_requirements(marca, modelo, ano, versao, cep, sexo, data_nascimento, estado_civil, principal_condutor, cobertura_extra, sinistro)
    #Pricing Requirements
    #HONDA, CIVIC, 2014, CIVIC SEDAN EXR 2.0 FLEXONE 16V AUT. 4P (Gasolina/Flex), particular, já tenho, já estou utilizando, 05363000, masculino, 30111980, casado(a), sou, Não desejo, nunca tive

    self.meu_carro_e_um_combo.select marca
    self.modelo_carro_combo.select modelo
    self.ano_modelo_combo.select ano
    self.versao_combo.select versao
    self.meu_carro_dorme_no_cep_text.set cep
    self.sou_do_sexo_combo.select sexo
    self.nasci_em_text.set data_nascimento
    self.meu_estado_civil_e_combo.select estado_civil
    self.principal_condutor_combo.select principal_condutor
    self.cobertura_idade_inferior_25_combo.select cobertura_extra
    self.sobre_sinistro_combo.select sinistro
    self.proximo_passo_button.click

  end

end
