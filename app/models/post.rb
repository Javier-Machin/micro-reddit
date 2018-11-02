class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :delete_all
  validates :title,  presence: true, length: { maximum: 30 }
  validates :body,   presence: true, length: { maximum: 500 }
end
