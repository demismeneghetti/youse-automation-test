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
NOVO_EMAIL
EMAIL_INVALIDO
SENHA
COMFIRMA_SENHA


TAGS:
@cadastro_usuario -> executa teste da feature Realizar Testes de Cadastro de Novos Usuários<\br>
@login_usuario_valido -> executa teste da feature Realizar Testes de Login
@login_logout_usuario -> executa teste da feature Realizar Testes de Login
@proposta_detalhes -> esecuta teste de feature Solicitação de Proposta de Seguros 
@all -> executa todos os testes do projeto

EXEMPLO DE COMANDO LOGIN:
cucumber -t @nome_da_tag NOME=˜Nome do Usuário" EMAIL=email@dominio.com SENHA=senha8caracteres

EXEMPLO DE COMANDO CADASTRO:
cucumber -t @nome_da_tag NOME=˜Nome do Usuário" NOVO_EMAIL=email@dominio.com NOVA_SENHA=senha8caracteres

EXEMPLO DE COMANDO SOLICITAÇÃO DE PROPOSTA:
cucumber -t @nome_da_tag NOME=˜Nome do Usuário" TIPO='pra mim' TELEFONE=11999999999 NOVO_EMAIL=email@dominio.com SENHA=senha8caracteres MARCA=CITROËN ANO=2010 VERSAO='C4 GLX 1.6 FLEX 16V 5P MEC. (Gasolina / Flex)' CEP=05363000 SEXO=Masculino DATA_NASCIMENTO=30111980 ESTADO_CIVIL='Casado(a)' PRINCIPAL_CONDUTOR=sou COBERTURA_EXTRA='Nâo desejo' SINISTRO='nunca tive'
