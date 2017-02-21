class User < ApplicationRecord
  has_many :registered_applications, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, length: {minimum: 1, maximum: 100}, presence: true
end
