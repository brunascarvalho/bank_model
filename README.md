# bank_model
Repositório com os códigos criados em DBT com as informações do arquivo test.csv (arquivo com as informações de um banco)

# Passo a passo para instalação e utilização do DBT no Visual Studio Code:

1) Criar um diretório com o nome "dbt";
2) Após a criação, instalar o dbt, utilizando o terminal de comando do Windows:
  - pip install dbt
  - pip install dbt-core
  - pip install dbt-postgres
2) Após a instalação, verificar a versão do DBT instalada, através do comando "dbt --version";
3) Verificando a instalação e a versão, podemos iniciar o dbt através do comando "dbt init";
4) Criar o projeto (colocar o nome) e qual banco de dados será utilizado (no nosso caso, será o Postgres);
5) Pronto! A sua estrutura de pastas foi criada.
6) A partir de agora você pode criar os seus arquivos de modelos.

IMPORTANTE: Configurar o arquivo profiles.yml com as conexões de banco de dados.

# Comandos úteis no DBT:

1) dbt deps: Comando utilizado para instalação dos pacotes que o projeto tem dependência;
2) dbt compile: Comando utilizado para efetuar a compilação do projeto;
3) dbt run: Comando utilizado para efetuar a criação das tabelas e artefatos no banco de dados;
4) dbt docs generate: Comando utilizado para gerar arquivo JSON com a documentação do projeto;
5) dbt docs serve: Comando utilizado para gerar uma página WEB com a documentação do projeto.
