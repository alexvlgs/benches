class BookingsController < ApplicationController
  before_action :set_bench, only: %i[new create]
  before_action :set_user, only: %i[new create]
  def show
  end

  def new
    @booking = Booking.new
  end
  
  def create
    @booking = Booking.new(booking_params)
    @booking.user = @user
    @booking.save
    raise

      redirect_to bench_path(@bench)
    # else
    #   redirect_to new_bench_booking_path(@bench)
    # end

  end

  def update
  end

  def delete
  end

  private

  def set_bench
    @bench = Bench.find(params[:bench_id])
  end

  def set_user
    @user = current_user
  end

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date, :bench_id)
  end
end
