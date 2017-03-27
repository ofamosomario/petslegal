require 'rails_helper'
require 'spec_helper'

RSpec.describe Breed, 'create'  do
  
  context "Testing: BREED View" do

	  it "creating a new breed" do
	    visit '/breeds/new'

	    within("#new_breed") do
	      fill_in 'breed[name]', with: 'Raça de Exemplo'
	    end

	    click_button 'Salvar'
	    expect(page).to have_content 'A raça foi cadastrada com sucesso.'
	  end	

	end

  context "Validate breed" do
  	it "a valid breed?" do
  		breed = Breed.new
  		breed.name = "Vira lata"

  		expect(breed.valid?).to be_truthy
  	end

  	it "a invalid breed?" do
  		breed = Breed.new
  		breed.name = nil

  		expect(breed.valid?).to be_falsey
  	end
  end

end

RSpec.describe Breed, 'relationship' do
  it { should have_many :dogs }
end

RSpec.describe Breed, 'column_specification' do
  it { should have_db_column(:name).of_type(:string).with_options(length: { maximum: 120 }, presence: true, uniqueness: true) }
end