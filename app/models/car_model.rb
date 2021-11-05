class CarModel < ActiveRecord::Base
    #relation to other model
    belongs_to :car_brand

    #validation for input data
    #protects "NOT NULL" fields against missing user input
    validates_presence_of :model 
    #validates :model, presence: ture //second way for validation
end
