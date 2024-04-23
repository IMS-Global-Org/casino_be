class CreateAuthentications < ActiveRecord::Migration[7.0]
  def change
    create_table :authentications, id: false do |t|
      t.string :uuid, limit: 20, primary_key: true
      t.string :username, limit: 20
      t.string :password, limit: 20

      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
