class RenameCarBrand < ActiveRecord::Migration
 #renames car_brand table to car_brands 
  
  def self.up
    rename_table :car_brand, :car_brands
  end

  def self.down
    rename_table :car_brands, :car_brand
  end
end
