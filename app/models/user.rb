class User < ApplicationRecord
  has_many :caption_joins
  has_many :captionables, through: :caption_joins

  has_secure_password
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password_confirmation, presence: true, on: :create
end
