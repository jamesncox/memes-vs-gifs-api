class User < ApplicationRecord
  has_secure_password
  # has_many :gifs
  # has_many :memes
 
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password_confirmation, presence: true, on: :create
end
