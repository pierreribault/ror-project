class Borrow < ApplicationRecord
  belongs_to :user
  belongs_to :owner, class_name: 'User', foreign_key: :user_id
  belongs_to :movie
end
