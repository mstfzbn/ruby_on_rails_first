class CarModels < ActiveRecord::Migration
  def change
  end

  def self.up
    create_table :car_models do |t|
      t.column :model, :string, :limit => 32, :null => false
  end

  def self.down
    drop_table :car_models
  end

end
#why
end