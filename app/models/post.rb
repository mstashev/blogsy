class Post < ApplicationRecord
  belongs_to :user #, counter_cahce: true

  validates :title, :body, presence: true
end
