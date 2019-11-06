class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
   # has_many :addresses
   enum role: {customer: 0, supplier: 1}
   
   has_many :addresses, dependent: :destroy
end
