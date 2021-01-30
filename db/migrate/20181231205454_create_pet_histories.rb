class CreatePetHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :pet_histories do |t|
      t.float :weight
      t.string :heigth
      t.text :description
      t.references :pet, foreign_key: true
      t.timestamps
    end
  end
end
