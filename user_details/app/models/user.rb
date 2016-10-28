class User < ActiveRecord::Base
   attr_accessor :password_encrypt
   before_save :encrypt_password

   def encrypt_password
   if true
     self.password = BCrypt::Engine.generate_salt
     self.password = BCrypt::Engine.hash_secret(password_encrypt, password)
   end
 end
 	validates :firstname,:lastname,presence: true
 	validates_presence_of :email, :message =>"should be unique"
 validates :password, :presence => true,format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{8,})\z/, message: "Not valid" }
end
