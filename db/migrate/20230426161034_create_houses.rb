class CreateHouses < ActiveRecord::Migration[7.0]
  def change
    create_table :houses do |t|
      t.string :title
      t.string :description
      t.references :admin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
