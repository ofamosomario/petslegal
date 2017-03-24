class AddBreedIdToDogs < ActiveRecord::Migration[5.0]
  def change
  	add_foreign_key :dogs, :breeds, column: :breed_id, name: "fk_dogs_breeds"
  end
end
