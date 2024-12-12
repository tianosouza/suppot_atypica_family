class User < ApplicationRecord
  has_secure_password

  with_options presence: true do
    validates :first_name
    validates :last_name
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :username, uniqueness: true
    validates :password_digest
  end
end
