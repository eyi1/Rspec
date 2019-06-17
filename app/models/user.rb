class User < ApplicationRecord
    has_secure_password
    
    has_many :posts

    #validates_presence_of :name, :email, :password
    validates :name, :email, presence: true
    validates :name, :email, uniqueness: true
end
