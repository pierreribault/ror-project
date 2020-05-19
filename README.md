# Ruby On Rails School Project 📚

This repository use [Lando](https://docs.lando.dev/)

## ✨ Useful commands 

#### Bundle
To start server if it has failed
`lando bundle exec rails s -b 0.0.0.0`

#### Rails
To list Rails commands
`lando rails`

To restart server
`lando rails restart`

To test if you want to check than all it's ok
`lando rails t`

To migrate DB
`lando rails db:migrate`

#### Yarn
To use yarn
`lando yarn [...]`

## ⚙️ Modify Default Configuration

#### Host name
If you want to change the default host : `ror.lndo.site` <br>
You need to alter the proxy part of `.lando.yml` <br>
Also you need to modify the host in `config/environnments/development.rb`

#### Mariadb Credentials
You need to alter the database part of `.lando.yml` <br>
Also you need to modify the default's values in `config/database.yml` <br>