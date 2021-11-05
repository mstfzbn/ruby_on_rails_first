class CarModelController < ApplicationController

    def list
        @car_models = CarModel.all
    end

    def show
        @car_model = CarModel.find(params[:id])
    end

    def new
        @car_model = CarModel.new
        @car_brands = CarBrand.all
    end

    def create
        @car_model = CarModel.new(car_model_params)

        if @car_model.save
            redirect_to :action => 'list'
        else
            @car_brands = CarBrand.all
            render :action => 'new'
        end
    end

    def car_model_params
        params.require(:car_models).permit(:model)
    end

    def edit
        @car_model = CarModel.find(params[:id])
        @car_brands = CarBrand.all
    end

    def update
        @car_model = CarModel.find(params[:id])
        
        if @car_model.update_attributes(car_model_param)
            redirect_to :action => 'show', :id => @car_model 
        else
            @car_brands = CarBrand.all
            render :action => 'edit'
        end
    end

    def car_model_param
        params.require(:car_model).permit(:model)
    end

    def delete
        CarModel.find(params[:id]).destroy
        redirect_to :action => 'list'
    end

    def show_car_brands
        @car_brand = CarBrand.find(params[:id])
    end

end
