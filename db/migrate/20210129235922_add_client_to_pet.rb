class AddClientToPet < ActiveRecord::Migration[5.2]
  def change
    add_reference :pets, :client, foreign_key: true
  end
end
