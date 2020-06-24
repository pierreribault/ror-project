class CreateBorrows < ActiveRecord::Migration[6.0]
  def change
    create_table :borrows do |t|
      t.integer :movie_id , null: false
      t.integer :owner_id, null: false
      t.integer :user_id, null: false
      t.integer :status, null: false, default: 0
      t.date :deadline, null:false
    end
  end
end
