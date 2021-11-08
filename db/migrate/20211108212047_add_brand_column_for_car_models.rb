class AddBrandColumnForCarModels < ActiveRecord::Migration
#adds new brand string column

  def self.up
    change_table :car_models do |t|
      t.string :brand, :limit => 32, :null => false
    end
  end

  def self.down
    change_table :car_modles do |t|
      t.remove :brand
    end
  end

end