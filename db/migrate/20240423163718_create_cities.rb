class CreateCities < ActiveRecord::Migration[7.0]
  def change
    create_table :cities do |t|
      t.string :name, limit: 20

      t.timestamps
    end
  end
end
