class CreateBorrows < ActiveRecord::Migration[6.0]
  def change
    create_table :borrows do |t|
      t.integer :movies_user_id , null: false
      t.integer :user_id, null: false
      t.boolean :status, null: false, default: false
      t.date :deadline, null:false
    end
  end
end
