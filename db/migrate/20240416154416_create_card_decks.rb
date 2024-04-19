class CreateCardDecks < ActiveRecord::Migration[7.0]
  def change
    create_table :card_decks do |t|
      t.string :brand, limit: 20
      t.string :classification, limit: 20
      t.integer :number
      t.boolean :jokers

      t.timestamps
    end
  end
end
