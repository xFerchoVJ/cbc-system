class ChangeDatatTypeForDescriptionHouses < ActiveRecord::Migration[7.0]
  def change
    remove_column :houses, :description
  end
end
