class CreateDogs < ActiveRecord::Migration[5.0]
  def change
    create_table :dogs do |t|
      t.integer :breed_id
      
      t.string  :dog_name, limit: 120, null: false
      t.integer :gender, null: false
      t.string  :owner_name, limit: 120, null: false
      t.string  :onwer_phone_1, limit: 14, null: false
      t.string  :owner_phone_2, limit: 14

      t.timestamps
    end
  end
end
