class CreateBreeds < ActiveRecord::Migration[5.0]
  def change
    create_table :breeds do |t|
      t.string :name, limit: 120, null: false

      t.timestamps
    end
  end
end
