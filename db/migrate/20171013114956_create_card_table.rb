class CreateCardTable < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :question, null: false
      t.string :answer, null: false
      t.string :photo_url
      t.integer :deck_id, null: false

      t.timestamps
    end
  end
end
