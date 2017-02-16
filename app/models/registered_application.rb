class RegisteredApplication < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  validates_uniqueness_of :url
end
