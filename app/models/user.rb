require 'bcrypt'

class User < ActiveRecord::Base

  validates :email, presence: true
  validates :encrypted_password, presence: true

  def password=(pwd)
    return unless pwd
    self.encrypted_password = BCrypt::Password.create(pwd)
  end

end
