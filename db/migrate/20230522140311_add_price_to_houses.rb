class AddPriceToHouses < ActiveRecord::Migration[7.0]
  def change
    add_column :houses, :price, :decimal, precision: 10, scale: 2
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
