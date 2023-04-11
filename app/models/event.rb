class Event < ApplicationRecord::Base
  has_many :logs, inverse_of: :event, dependent: :destroy
  accepts_nested_attributes_for :logs, allow_destroy: true
  validates_associated :logs
end
