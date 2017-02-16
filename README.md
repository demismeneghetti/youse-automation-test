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
EMAIL_INVALIDO
SENHA
COMFIRMA_SENHA

TAGS:
@cadastro_usuario -> executa testes da feature cadastro de usuário
@cadastro_usuario_senha_divergente -> executa testes da feature cadastro de usuário
@proposta_detalhes ->
@proposta_home ->
@proposta ->
@smoke

EXEMPLO DE COMANDO:
cucumber -t @nome_da_tag NOME=˜Nome do Usuário" EMAIL=email@dominio.com SENHA=senha8caracteres
