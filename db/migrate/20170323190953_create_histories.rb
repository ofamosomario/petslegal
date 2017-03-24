class CreateHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :histories do |t|
      t.belongs_to :dog, foreign_key: true
      
      t.integer :care
      t.string :user, limit: 120, null: false
      t.text :description, limit: 225, null: false

      t.timestamps
    end
  end
end
