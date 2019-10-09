class Adress < ApplicationRecord
  belongs_to :user
  validates :phone_number, numericality: true
end
