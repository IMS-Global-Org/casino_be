class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :street1, limit: 20
      t.string :street2, limit: 20
      t.integer :area_code
      t.integer :area_code_suffix

      t.references :city, foreign_key: true
      t.references :state, foreign_key: true
      t.references :country, foreign_key: true
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
