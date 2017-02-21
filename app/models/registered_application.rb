class RegisteredApplication < ApplicationRecord
  belongs_to :user
  has_many :events, dependent: :destroy

  validates_uniqueness_of :url, presence: true, uniqueness: { scope: :user_id }
end
