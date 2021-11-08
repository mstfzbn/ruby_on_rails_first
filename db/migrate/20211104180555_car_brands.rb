class CarBrands < ActiveRecord::Migration
#inital creation of table

  def self.up
    create_table :car_brand do |t|
      t.column :brand, :string, :limit => 32, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :car_brand
  end

end