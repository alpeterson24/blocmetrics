class Event < ApplicationRecord
  belongs_to :registered_application
  belongs_to :user

  validates :name, presence: true
end
