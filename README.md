# Pizzaria SIN5005

Projetinho da disciplina SIN5005 Tópicos em Engenharia de Software. Só o basicão de um sistema. Estou usando Ruby On Rails, integração contínua e testes automatizados, além de postgres.

Versões utilizadas:

  - **Ruby:** 2.4.0
  - **Rails:** 5.0.3
  - **postgreSQL:** 9.6

### Instalações

   - Instalar ruby
   - Instalar rails
   - Instalar postgres

----

### Clonando o repositório

Navegar para a pasta onde fica seus projetos de desenvolvimento (workspace).

Via SSH:

```sh
$ git clone git@github.com:renatabrasil/pizzaria-sin5005.git
```

Vai pedir sua chave SSH. Veja esse [link](https://help.github.com/articles/connecting-to-github-with-ssh/) para gerar uma. Siga todos os passos do guia porque além de gerar uma chave SSH, tem que adicioná-la a sua conta no github.

Via HTTPS:

```sh
$ git clone https://github.com/renatabrasil/pizzaria-sin5005.git
```

### Configurando o projeto

Entrar na pasta pizzaria-sin5005. Todos os demais comandos devem ser executados dentro dela.

O primeiro deles:
```sh
$ bundle install
```

Para criar os bancos de dados, rodar as migrations e o arquivo seed.db (com dados de inicialização do banco de dados) executar:

```sh
$ rake db:setup
```

Se tudo foi seguido corretamente até agora, rodando:
```sh
$ rails s
```

E acessando http://localhost:3000 é possível acessar o sistema.

#### Comandos adicionais

Console do rails:
```sh
$ rails c
```
Console (ruby):
```sh
$ irb
```

Iniciar o servidor usando uma porta diferente de 3000 (default):
```sh
$ rails s -p <numero>
```

Rodar testes unitários (rspec):
```sh
$ rspec
```
Rodar testes unitários (rspec) de um arquivo específico:
```sh
$ bundle exec rspec spec/models/activity_spec.rb
```

Rodar testes do cucumber:
```sh
$ rake cucumber
```

Rodar todos os testes:
```sh
$ rake
```

Sempre que tiver migrations novas, o comando abaixo deve ser executado:
```sh
$ rake db:migrate
```
Em ambiente de testes:
```sh
$ rake db:migrate RAILS_ENV=test
```


----
 \o/ hey, ho, let's go /o/
