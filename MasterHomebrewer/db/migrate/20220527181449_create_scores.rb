class CreateScores < ActiveRecord::Migration[7.0]
  def change
    create_table :scores do |t|
      t.string :category
      t.integer :score
      t.references :brewer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
