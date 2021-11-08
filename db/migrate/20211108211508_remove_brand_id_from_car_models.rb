class RemoveBrandIdFromCarModels < ActiveRecord::Migration
#removes brand_id integero column

  def self.up
    remove_column :car_models, :brand_id
  end

  def self.down
    add_column :car_models, :brand_id, :integer , :null => false
  end

end