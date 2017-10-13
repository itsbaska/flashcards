class User < ApplicationRecord

  include BCrypt

  has_many :rounds
  has_many :guesses, through: :rounds

  validates :email, :username, presence: true
  validates :email, :username, uniqueness: true

  def password
    @password ||= Password.new(encryted_password)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.encryted_password = @password
  end

   def self.authenticate(password)
    self.password == password
  end
end
