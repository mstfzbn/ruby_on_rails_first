class ReorderColumnsCarModles < ActiveRecord::Migration
  #reorder brand column after models column

  def self.up
    change_table :car_models do |t|
      t.change :brand, :string, after: :model
    end
  end

  def self.down
    change_table :car_modles do |t|
      t.change :model, :string, after: :brand
    end
  end

end
