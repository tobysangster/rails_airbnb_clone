class EquipmentController < ApplicationController

      def index
        @equipment = Equipment.all
      end

      def show
        @equipment = Equipment.find(params[:id])
      end
      
      def new
        @equipment = Equipment.new
      end

      def create
        @equipment = Equipment.new(equipment_params)
        if @equipment.save
          redirect_to equipment_path(@equipment)
        else
          render "new"
        end
      end

      def update
        @equipment = Equipment.find(params[:id])
        @equipment.update(equipment_params)
        redirect_to equipment_path(@equipment)
      end

      def destroy
        @equipment = Equipment.find(params[:id])
        @equipment.destroy
        redirect_to equipment_path
      end

      private

      def equipment_params
        params.require(:equipment).permit(:title, :category, :price, :description, :rules)
      end
    
end
