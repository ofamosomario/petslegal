class Breed < ApplicationRecord

	has_many :dogs

  validates :name, length: {maximum: 120}, presence: true
  validates_uniqueness_of :name
end
