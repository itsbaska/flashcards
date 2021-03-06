class CreateGuessTable < ActiveRecord::Migration[5.0]
  def change
    create_table :guesses do |t|
      t.integer :card_id, null: false
      t.integer :round_id, null: false
      t.integer :count, default: 0
      t.boolean :correctness, default: false

      t.timestamps
    end
  end
end
