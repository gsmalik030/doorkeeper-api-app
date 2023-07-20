class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   enum role: %i[user admin]

   validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
   validates :email, uniqueness: true
   validates :password, length: { minimum: 6 }

   def self.authenticate(email, password)
     user = User.find_for_authentication(email: email)
     user&.valid_password?(password) ? user : nil
    
   end
end
