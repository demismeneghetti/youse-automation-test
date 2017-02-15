# automation-test-youse
Automação de testes funcionais da Youse
- Cadastro de novo usuário;
- Solicitação de proposta; e,
- Solicitação de proposta via detalhes.

PRÉ-CONDIÇÕES:
ruby 2.2.0

CONFIGURANDO AMBIENTE:
gem install bundler
bundle

PARAMETROS NECESSÁRIOS PARA EXECUÇÃO:
NOME
EMAIL
SENHA

TAGS:
@cadastro_usuario -> executa testes da feature cadastro de usuário
@cadastro_usuario_senha_divergente -> executa testes da feature cadastro de usuário
@proposta_detalhes ->
@proposta_home ->
@proposta ->
@smoke

EXEMPLO DE COMANDO:
cucumber -t @cadastro_usuario EMAIL=automacao_001@gmail.com SENHA=0123456789
