class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard
    @benches = current_user.benches
    @bookings = current_user.bookings
  end
end
