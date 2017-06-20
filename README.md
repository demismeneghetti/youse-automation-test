# automation-test-youse
Automação de testes funcionais da Youse
- Cadastro de novo usuário;
- Solicitação de proposta; e,
- Solicitação de proposta via detalhes.


PRÉ-CONDIÇÕES:
ruby 2.2.0


CONFIGURANDO AMBIENTE:
1) gem install bundler;
2) bundle.


TAGS:
- @cadastro_usuario -> executa teste da feature Realizar Testes de Cadastro de Novos Usuários
- @login_usuario_valido -> executa teste da feature Realizar Testes de Login
- @login_logout_usuario -> executa teste da feature Realizar Testes de Login
- @proposta_detalhes -> esecuta teste de feature Solicitação de Proposta de Seguros 
- @all -> executa todos os testes do projeto


EXEMPLO DE COMANDO: cucumber -t @nome_da_tag
