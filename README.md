# Pizzaria SIN5005

https://sonarcloud.io/api/project_badges/measure?project=pizzaria-sin5005&metric=sqale_index


Projetinho da disciplina SIN5005 Tópicos em Engenharia de Software. Só o basicão de um sistema. Estou usando Ruby On Rails, integração contínua e testes automatizados, além de postgres.

**(https://pizzaria-sin5005.herokuapp.com/)**

 
> **Versões:**

> - **Ruby:** 2.4.0
> - **Rails:** 5.0.3
> - **postgreSQL:** 9.6

> **Instalações:**

> - **Ruby:** [link ubuntu](http://codepop.biz/installing-ruby-2-4-0-rbenv-linux/)
> - **Rails:** 
> 1. [link1 ubuntu](https://www.rosehosting.com/blog/install-ruby-on-rails-on-ubuntu-16-04/)
> 2. [link2 ubuntu](https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-ubuntu-16-04)
> - **postgreSQL:** 
> 1. [link1 ubuntu](https://www.postgresql.org/download/linux/ubuntu/)
> 2. [link2 windows](https://www.postgresql.org/download/windows/)
> - **Ambiente de desenvolvimento (Ubuntu):** 
> 1. **Atom:** opção de IDE (tem vários recursos já instalados).
> 2. **Sublime Text:** outra opção de IDE, porém precisa instalar vários plugins.
> 3. **[linter-rubocop](https://atom.io/packages/linter-rubocop):** ajuda a manter a padronização do código auxiliando a IDE (Atom) a evidenciar o que está fora do padrão.
> 3. **[rubocop-auto-correct](https://atom.io/packages/rubocop-auto-correct/):** integrado com o Atom ajuda a manter o código padronizado oferecendo o recurso auto-correct.


> **Outros links úteis:**

> - **RSpec (testes unitários):**
>  1. [Behaviour Driven Development for Ruby. Making TDD Productive and Fun](http://rspec.info/)
>  2. [Usando o RSpec para testar sua aplicação Rails](https://nandovieira.com.br/usando-o-rspec-para-testar-sua-aplicacao-rails-modelos)
>  3. [How to test rails models with rspec](https://semaphoreci.com/community/tutorials/how-to-test-rails-models-with-rspec)
>  4. [Documentação](https://relishapp.com/rspec/rspec-rails/docs).
> - **Cucumber (testes de aceitação):** 
> 1. [Tutorial 1](https://cassiomarques.wordpress.com/2008/11/16/testes-funcionais-no-rails-usando-o-cucumber/)
> 2. [Rails cucumber test cases for simple CRUD using capybara and selenium](https://ramprabu.wordpress.com/2014/06/05/rails-cucumber-test-cases-for-simple-crud-using-capybara-and-selenium/)
> 3. [Documentação](https://cucumber.io/docs/reference/rails).

----
### Fluxo de trabalho

Para detalhes sobre a forma de contribuir com esse repositório, por favor olhe o wiki do projeto clicando [aqui](https://github.com/renatabrasil/pizzaria-sin5005/wiki/Documenta%C3%A7%C3%A3o-de-desenvolvimento) e siga as orientações contidas lá.

----

### Clonando o repositório

Navegar para a pasta onde fica seus projetos de desenvolvimento (workspace). Por exemplo:

```sh
$ cd Documentos/projetos
```

Via SSH:

```sh
$ git clone git@github.com:renatabrasil/pizzaria-sin5005.git
```

Vai pedir sua chave SSH. Veja esse [link](https://help.github.com/articles/connecting-to-github-with-ssh/) para gerar uma. Siga todos os passos do guia porque além de gerar uma chave SSH, tem que adicioná-la a sua conta no github.

[**OU**](https://git-scm.com/book/en/v2/Git-on-the-Server-The-Protocols)

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
 \o/ hey ho, let's go! /o/
