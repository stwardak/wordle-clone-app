class CreateWords < ActiveRecord::Migration[7.0]
  def change
    create_table :words do |t|
      t.string :word
      t.string :difficulty_level

      t.timestamps
    end
  end
end
