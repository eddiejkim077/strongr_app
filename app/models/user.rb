class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, uniqueness: true
    
    has_many :exercises
    has_many :plans 
end
