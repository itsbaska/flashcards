class User < ApplicationRecord

  include BCrypt

  has_many :rounds
  has_many :guesses, through: :rounds

  validates :email, :username, presence: true
  validates :email, :username, uniqueness: true

  def password
    @password ||= Password.new(encrypted_password)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.encrypted_password = @password
  end

   def authenticate(username, password)
    return nil if username == ''
    user = User.find_by(username: username)

    if user.password == password
      return user
    else
      nil
    end
  end
end
