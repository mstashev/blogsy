class User < ApplicationRecord
  has_many :posts

  validates :username, :email_address, presence: true, uniqueness: true

end
