# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Other
      t.string :firstname, null: false
      t.string :lastname, null: false
      t.string :address, null: false

      ## Role
      t.boolean :superadmin_role, default: false
      t.boolean :supervisor_role, default: false
      t.boolean :user_role, default: true

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true

    User.create! do |u|
      u.email     = 'test@test.com'
      u.firstname = 'Theo'
      u.lastname = 'Guinebertier'
      u.address = '7 Rue de bourgogne 95100 Argenteuil'
      u.superadmin_role = true
      u.password    = 'password'
    end

    User.create! do |u|
      u.email     = 'test2@test.com'
      u.firstname = 'Pierre'
      u.lastname = 'Ribault'
      u.address = '7 Rue de bourgogne 95100 Argenteuil'
      u.password    = 'password'
    end

    User.create! do |u|
      u.email     = 'test3@test.com'
      u.firstname = 'Thibeault'
      u.lastname = 'Chenu'
      u.address = '7 Rue de bourgogne 95100 Argenteuil'
      u.password    = 'password'
    end
  end
end
