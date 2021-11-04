class User < ApplicationRecord
    #has_many :posts, dependent: :destroy,
    #has_many :comments,
    has_secure_password
   
    #validates :email, uniqueness: true, 
    #presence: true, 
    #uniqueness: {case_sensitive: false },
    #format: {with: /\A[^@\s]+@[^@\s]+\z/},
    #validates :first_name, presence: true,
    #validates :last_name, presence: true
end