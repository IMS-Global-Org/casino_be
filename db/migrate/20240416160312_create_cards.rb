# frozen_string_literal: true

class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :rank, limit: 1
      t.string :suit, limit: 10
      t.string :name, limit: 10
      t.integer :points

      t.references :card_deck, foreign_key: true

      t.timestamps
    end
  end
end
