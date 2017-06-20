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

  def preenche_proposta_pricing_requirements
    @veiculo = OpenStruct.new
    @veiculo.marca = 'CITROËN'
    @veiculo.modelo = 'C4'
    @veiculo.ano = '2010'
    @veiculo.versao = 'C4 GLX 1.6 FLEX 16V 5P MEC. (Gasolina / Flex)'
    @veiculo.cep = '06763040'
    @veiculo.sexo = 'Masculino'
    @veiculo.data_nascimento = '30111980'
    @veiculo.estado_civil = 'Casado(a)'
    @veiculo.principal_condutor = 'sou'
    @veiculo.cobertura_extra = 'Não desejo'
    @veiculo.sinistro = 'nunca tive'

    self.meu_carro_e_um_combo.select @veiculo.marca
    self.modelo_carro_combo.select @veiculo.modelo
    self.ano_modelo_combo.select @veiculo.ano
    self.versao_combo.select @veiculo.versao
    self.meu_carro_dorme_no_cep_text.set @veiculo.cep
    self.sou_do_sexo_combo.select @veiculo.sexo
    self.nasci_em_text.set @veiculo.data_nascimento
    self.meu_estado_civil_e_combo.select @veiculo.estado_civil
    self.principal_condutor_combo.select @veiculo.principal_condutor
    self.cobertura_idade_inferior_25_combo.select @veiculo.cobertura_extra
    self.sobre_sinistro_combo.select @veiculo.sinistro
    self.proximo_passo_button.click
  end
end
