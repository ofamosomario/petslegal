class Dog < ApplicationRecord

  self.per_page = 10

	enum gender: {
		"Macho": 1,
		"Fêmea": 2
	}

  validates :dog_name, length: {maximum: 120}, presence: true
  validates :gender, length: {maximum: 10}, presence: true
  validates :owner_name, length: {maximum: 120}, presence: true
  validates :onwer_phone_1, length: {maximum: 14}, presence: true

  belongs_to :breed

  has_many :histories, inverse_of: :dog
  accepts_nested_attributes_for :histories, reject_if: :all_blank, allow_destroy: true

  def self.last_dogs
  	limit(10)
  	.order(:created_at)
  end

end
