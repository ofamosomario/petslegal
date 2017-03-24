class History < ApplicationRecord

	enum care: {
		"Tosa e banho": 1,
		"Atendimento veterinário": 2,
		"Outro...": 2
	}

  validates :user, length: {maximum: 120}, presence: true
  validates :description, length: {maximum: 220}, presence: true

  belongs_to :dog



end
