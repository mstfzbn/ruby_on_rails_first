class CarBrandController < ApplicationController

    def list
        @car_brands = CarBrand.all
    end

    def show
        @car_brand = CarBrand.find(params[:id])
    end

    def new
        @car_brand = CarBrand.new
    end

    def create
        @car_brand = CarBrand.new( car_brand_params ) 

        if @car_brand.save
            redirect_to :action => 'list'
        end
    end

    def car_brand_params
        params.require(:car_brand).permit(:brand)
    end

    def edit
        @car_brand = CarBrand.find(params[:id])
    end

    def update
        @car_brand = CarBrand.find(params[:id])
        
        if @car_brand.update_attributes( car_brand_param )
            redirect_to :action => 'show', :id => @car_brand 
        end
    end

    def car_brand_param
        params.require(:car_brand).permit(:brand)
    end

    def delete
        CarBrand.find(params[:id]).destroy
        redirect_to :action => 'list'
    end

end
