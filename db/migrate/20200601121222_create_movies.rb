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
  end
end
