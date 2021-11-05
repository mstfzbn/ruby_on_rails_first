class CarModels < ActiveRecord::Migration

  #defines the properties of every table
  def self.up
    create_table :car_models do |t|
      t.column :model, :string, :limit => 32, :null => false

      #need a brand_id colum here for making a one brand to many models relation 
      t.column :brand_id, :integer , :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :car_models
  end

end