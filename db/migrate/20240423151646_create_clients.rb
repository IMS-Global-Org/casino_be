class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :first_name, limit: 20
      t.string :last_name, limit: 20
      t.date :date_of_birth

      t.timestamps
    end
  end
end
