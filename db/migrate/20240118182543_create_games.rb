class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.integer :word_id
      t.string :status
      t.integer :attempts

      t.timestamps
    end
  end
end
