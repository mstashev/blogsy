class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :username, :email_address, presence: true, uniqueness: true

  def comments_count
    comments.count
  end

end
