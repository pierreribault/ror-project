class Borrow < ApplicationRecord
  belongs_to :user
  belongs_to :movies_user
end
