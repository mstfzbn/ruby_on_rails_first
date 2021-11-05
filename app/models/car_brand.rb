class CarBrand < ActiveRecord::Base
    #relation to other model
    has_many :car_models 

    #validation for input data
    #protects "NOT NULL" fields against missing user input
    validates_presence_of :brand
    #validates :brand, presence: ture //second way for validation
end
