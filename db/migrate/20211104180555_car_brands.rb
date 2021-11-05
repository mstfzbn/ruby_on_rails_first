class CarBrands < ActiveRecord::Migration

  def self.up
    create_table :car_brand do |t|
      t.column :brand, :string, :limit => 32, :null => false
    end
  end

  def self.down
    drop_table :car_brand
  end

end