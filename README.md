# PetLegal - Instruções

Projeto desenvolvido para Ionatec

### Informações de configuração e instalação do projeto PetLegal:

* Versão do Ruby e do Rails: 2.3.3p222 / 5.0.2

* Banco de dados: postgreSQL

* Instalção das GEMS: vá até a pasta que tenha descompactado o projeto e execute o seguinte comando:

```sh
$ rake bundle install
```

* Criação do banco de dados e seeds: vá até a pasta que tenha descompactado o projeto e execute o seguinte comando:
```sh
$ rake db:create db:migrate db:seed
```

* Iniciando o servidor: vá até a pasta que tenha descompactado o projeto e inicialize utilizando esse comando:

```sh
$ rails s
```

* Realizando os testes: execute os seguintes comandos para realizar os testes do projeto:

```sh
$ rake spec
```