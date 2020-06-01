class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.string :year, null: false
      t.string :plot, null: false
      t.string :genre, null: false
      t.string :director
      t.string :actors
      t.string :poster, null: false
      t.string :runtime, null: false
      t.timestamps
    end

    Movie.create! do |m|
      m.title = 'Joker'
      m.year = '2019'
      m.plot = 'In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker.'
      m.genre = 'Crime, Drama, Thriller'
      m.director = 'Todd Phillips'
      m.actors = 'Joaquin Phoenix, Robert De Niro, Zazie Beetz'
      m.poster = 'https://m.media-amazon.com/images/M/MV5BNGVjNWI4ZGUtNzE0MS00YTJmLWE0ZDctN2ZiYTk2YmI3NTYyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SY1000_CR0,0,674,1000_AL_.jpg'
      m.runtime = '150'
    end

    Movie.create! do |m|
      m.title = '1917'
      m.year = '2019'
      m.plot = 'April 6th, 1917. As a regiment assembles to wage war deep in enemy territory, two soldiers are assigned to race against time and deliver a message that will stop 1,600 men from walking straight into a deadly trap.'
      m.genre = 'Crime, Drama, Thriller'
      m.director = 'Sam Mendes'
      m.actors = 'Dean-Charles Chapman, George MacKay, Daniel Mays'
      m.poster = 'https://m.media-amazon.com/images/M/MV5BOTdmNTFjNDEtNzg0My00ZjkxLTg1ZDAtZTdkMDc2ZmFiNWQ1XkEyXkFqcGdeQXVyNTAzNzgwNTg@._V1_SY1000_CR0,0,631,1000_AL_.jpg'
      m.runtime = '150'
    end

    Movie.create! do |m|
      m.title = 'Bloodshot'
      m.year = '2020'
      m.plot = 'Ray Garrison, a slain soldier, is re-animated with superpowers.'
      m.genre = 'Action, Drama, Sci-Fi '
      m.director = 'Dave Wilson'
      m.actors = 'Vin Diesel, Eiza González, Sam Heughan'
      m.poster = 'https://m.media-amazon.com/images/M/MV5BYjA5YjA2YjUtMGRlNi00ZTU4LThhZmMtNDc0OTg4ZWExZjI3XkEyXkFqcGdeQXVyNjUyNjI3NzU@._V1_SY1000_SX800_AL_.jpg'
      m.runtime = '150'
    end

    Movie.create! do |m|
      m.title = 'Public Enemies'
      m.year = '2009'
      m.plot = 'The Feds try to take down notorious American gangsters John Dillinger, Baby Face Nelson and Pretty Boy Floyd during a booming crime wave in the 1930s.'
      m.genre = 'Biography, Crime, Drama'
      m.director = 'Michael Mann'
      m.actors = 'Christian Bale, Johnny Depp, Christian Stolte'
      m.poster = 'https://m.media-amazon.com/images/M/MV5BMGI4YTIxMDQtNDlmNC00ZDJhLWIyZGItM2QyODRiMTEzN2ViXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_SY1000_CR0,0,675,1000_AL_.jpg'
      m.runtime = '150'
    end
  end
end
