class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def map
     if params[:query].present? 
      sql_query = " \
        benches.name @@ :query \
        OR benches.location @@ :query \
        OR benches.city @@ :query \
      "
      @benches = Bench.where(sql_query, query: "%#{params[:query]}%")
    else 
      @benches = Bench.all
    end
    if @benches.empty?
    flash.now[:alert] = "Sorry, we could not find what you're looking for."
    end
    @markers = @benches.geocoded.map do |bench|
      {
        lat: bench.latitude,
        lng: bench.longitude,
        infoWindow: render_to_string(partial: "shared/info_window", locals: { bench: bench })
      }
    end
  end

  def dashboard
    @benches = current_user.benches
    @bookings = current_user.bookings
  end
end
