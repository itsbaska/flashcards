class User < ApplicationRecord
  has_many :rounds
  has_many :guesses, through: :rounds

  validates :email, :username, :encrypted_password, presence: true
  validates :email, :username, uniqueness: true
end

