class User < ApplicationRecord
  has_many :registered_applications, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
