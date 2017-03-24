require 'rails_helper'
require 'spec_helper'

RSpec.describe Dog, 'create'  do
  
  context "Validate dog" do
  	it "a valid dog?" do
  		dog = Dog.new
  		dog.dog_name = "Vira lata"
  		dog.gender = "Macho"
  		dog.owner_name = "Mário Augusto"
  		dog.onwer_phone_1 = "(31)98421-4820"
  		dog.breed_id = 1

  		expect(dog.valid?).to be_truthy
  	end
  end

end

RSpec.describe Dog, 'relationship' do
  it { should belong_to :breed }
  it { should have_many :histories }
end

RSpec.describe Dog, 'column_specification' do
  it { should have_db_column(:dog_name).of_type(:string).with_options(length: { maximum: 120 }, presence: true) }
  it { should have_db_column(:gender).of_type(:integer).with_options(presence: true) }
  it { should have_db_column(:owner_name).of_type(:string).with_options(length: { maximum: 120 }, presence: true ) }
  it { should have_db_column(:onwer_phone_1).of_type(:string).with_options(length: { maximum: 14 }, presence: true ) }
  it { should have_db_column(:owner_phone_2).of_type(:string).with_options(length: { maximum: 14 } ) }
  it { should have_db_column(:breed_id).of_type(:integer) }
end