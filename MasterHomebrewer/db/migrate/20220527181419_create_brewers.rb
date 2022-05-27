class CreateBrewers < ActiveRecord::Migration[7.0]
  def change
    create_table :brewers do |t|
      t.string :first_name
      t.string :last_name
      t.string :club

      t.timestamps
    end
  end
end
