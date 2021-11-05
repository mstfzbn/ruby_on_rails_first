class CarBrands < ActiveRecord::Migration
  def change
  end

  def self.up
    create_table :car_brands do |t|
      t.column :brand, :string, :limit => 32, :null => false
  end

  def self.down
    drop_table :car_brands
  end

end
#why
end