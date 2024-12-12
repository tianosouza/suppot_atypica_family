class User < ApplicationRecord
  with_options presence: true do
    validates :first_name
    validates :last_name
    validates :email, uniqueness: true
    validates :username, uniqueness: true
    validates :password_digest
  end
end
