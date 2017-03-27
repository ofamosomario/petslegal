class Breed < ApplicationRecord

  self.per_page = 10

	has_many :dogs

  validates :name, length: {maximum: 120}, presence: true
  validates_uniqueness_of :name
end
