class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :name, limit: 30

      t.references :client, foreign_key: true
      t.references :card_deck, foreign_key: true

      t.timestamps
    end
  end
end
