class CreateBorrows < ActiveRecord::Migration[6.0]
  def change
        create_table :borrows do |t|
      t.integer :movie_user_id , null: false
      t.integer :user_id, null: false
      t.boolean :status, null: false, default: false
      t.datetime :deadline, null:false
    end
  end
end
