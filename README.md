# Curso de Ruby on Rails, primer grupo

## Para crear una app nueva:

    rails new blog

## Levantar el server

    rails server

A partir de aqui pueden ver su app corriendo en el puerto 3000, http://127.0.0.1:3000

## Configurar la Base de Datos

Abrir el archivo +config/database.yml+ y configurar de acuerdo a nuestras necesidades

## Crear la base de datos

    rake db:create

## Crear el modelo Post

    rails generate model post

## Migraciones

Editar el archivo db/migrate/XXXXX__create_posts.rb

    class CreatePosts < ActiveRecord::Migration
      def self.up
        create_table :posts do |t|
          t.string :title
          t.string :short_description
          t.string :body
          t.string :state

          t.timestamps
        end
      end

      def self.down
        drop_table :posts
      end
    end

## Correr las migraciones para efectuar los cambios en la base de datos:

    rake db:migrate

## Probar nuestro modelo en la consola

    rails console

### Algunos comandos para probar:

    Post.create(:title => 'Un titulo para nuestro post')

    p = Post.find(1)

    p.update_attributes(:state => 'published')


    Post.where(:state => 'published')

## Para siempre saber lo que ActiveRecord hace por nosotros

    tail -f log/development.log
