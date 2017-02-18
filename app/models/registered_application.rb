class RegisteredApplication < ApplicationRecord
  belongs_to :user
  has_many :events
  validates :user, presence: true
  validates_uniqueness_of :url
end
