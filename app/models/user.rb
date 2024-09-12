class User < ApplicationRecord
  has_many :funding_applications

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
