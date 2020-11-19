class PagesController < ApplicationController
  def home
  end

  def dashboard
    @equipment = current_user.equipment
    @bookings = current_user.bookings
  end
end
