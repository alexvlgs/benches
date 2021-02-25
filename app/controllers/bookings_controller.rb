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
    @booking.bench = @bench
    rented = false
    
    bookings_for_bench = Booking.where(bench_id: @booking.bench_id)
    bookings_for_bench.each do |booking|
      starting_date = booking.starting_date
      ending_date = booking.ending_date

      if @booking.starting_date.between?(starting_date, ending_date) || @booking.ending_date.between?(starting_date, ending_date)
        rented = true
      end
    end

    if rented 
      # render :new, notice: "Your bench has already been booked!"
      flash.now[:alert] = "Da bench has already been booked, sorry for your butt"
      render :new

    else
      if @booking.save
        redirect_to bench_path(@bench), notice: "Your booking has been succesfull!"
      else
        render :new, notice: "Sorry, something wrong"
      end
    end
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
    params.require(:booking).permit(:starting_date, :ending_date)
  end
end
