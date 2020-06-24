class CreateMoviesUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :movies_users do |t|
      t.integer :movie_id
      t.integer :user_id
    end
  end
end
