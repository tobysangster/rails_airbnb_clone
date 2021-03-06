class EquipmentController < ApplicationController

      def index
        if params[:query].present?
          @equipment = Equipment.search_by_title_and_category(params[:query])
        else
          @equipment = Equipment.all
        end
      end

      def show
        @booking = Booking.new
        @equipment = Equipment.find(params[:id])
      end

      def new
        @equipment = Equipment.new
      end

      def create
        @equipment = Equipment.new(equipment_params)
        @equipment.user = current_user
        if @equipment.save!
          redirect_to equipment_path(@equipment)
        else
          render :new
        end
      end
      



      def edit
        @equipment = Equipment.find(params[:id])
      end

      def update
        @equipment = Equipment.find(params[:id])
        @equipment.update(equipment_params)
        redirect_to equipment_path(@equipment)
      end

      def destroy
        @equipment = Equipment.find(params[:id])
        @equipment.destroy
        redirect_to dashboard_path
      end

      private

      def equipment_params
        params.require(:equipment).permit(:title, :category, :price, :description, :location, :rules, photos: [])
      end

end
