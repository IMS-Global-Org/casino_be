class CreateScores < ActiveRecord::Migration[7.0]
  def change
    create_table :scores do |t|
      t.integer :points

      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
