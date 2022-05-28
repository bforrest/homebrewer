Learning project for Rails to impliment the scoring described for:
[Master Homebrewer Program](https://www.masterhomebrewerprogram.com/home)


Fresh `project` folder

- docker run -it --rm -v ${PWD}:/usr/src/app ruby:3.0 bash
- cd /usr/src/app
- gem install rails
- rails new <myapp> --skip-test --skip-bundle

chmod +x docker-entrypoint.sh

## For non-Rails front end

docker-compose run web bin/rails webpacker:install
docker-compose run web bin/rails webpacker:install:vue


## Postgres Setup

### Docker things

docker-compose up -d database
docker-compose run --rm database psql -U postgres -h database
'some-long-secure-password' which must match what is stored in the .env folder

### Rails-y things

```ruby
gem 'pg', '~>1.0'
```

### config/database.yml

```yml
default: &default
adapter: postgresql
encoding: unicode
host: <%= ENV.fetch('DATABASE_HOST') %> 
username: <%= ENV.fetch('POSTGRES_USER') %> 
password: <%= ENV.fetch('POSTGRES_PASSWORD') %> 
database: <%= ENV.fetch('POSTGRES_DB') %>
pool: 5 
variables:
    statement_timeout: 5000 

development:
    <<: *default
test:
    <<: *default 
    database: myapp_test
production: 
<<: *default
```

docker-compose run --rm web bin/rails db:create

docker compose run web bin/rails generate scaffold Brewer first_name:string last_name:string club:string

docker compose run web bin/rails generate scaffold ScoreSheet category:string score:integer brewer:references


docker compose run web bin/rails db:migrate


## Prep rspec

Update the gem file:

```Gemfile
group :development, :test do
# Call 'byebug' anywhere in the code to stop execution and get a debugger... gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
gem 'rspec-rails', '~> 3.8'
end
```

To scaffold:

```zsh
docker-compose exec web bin/rails generate rspec:install

docker-compose exec web bin/rails generate rspec:model score
```

To run:

```zsh
docker-compose exec web bin/rails spec
```

## From the Rails 7 book

```zsh
docker compose run web bin/rails generate controller Say hello goodbye
```

This creaetes the Say controller along with a `hello` and `goodbye` views



## From Docker for Rails Developers




## From the Rails Guides

Controller generation:
docker compose run web bin/rails generate controller Brewers



docker-compose exec web \
    bin/rails g scaffold HomeBewer first_name:string last_name:string

docker-compose exec web \
    bin/rails g scaffold SubCategory name:string category:

docker-compose exec web \
    bin/rails g scaffold Score subcategory:string score:integer

## CSS With Tailwind CSS

docker-compose exec web bundle add tailwindcss-rails
docker-compose exec web bin/rails tailwindcss:install
## Random Notes From Master Homebrewer Program

```text
When thinking of beer, mead, and cider styles, the
subcategory is the most important label – subcategory
means essentially the same thing as style and identifies
the major characteristics of one type of beer, mead, or
cider. Each style has a well-defined description that is the
basic tool used during judging. 
```

[['lager', 'mead', 'cider'], 'sour', 'ale']

Beer, Cider, Mead

Beer -> Lager, Ale, Sour


Rank

Awards



## New Rails App

rails new <app_name> -d=postgres --css=bootstrap

rails new wtf_app-d=postgres --css=bootstrap
 