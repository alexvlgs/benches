class ReviewsController < ApplicationController
  before_action :find_bench

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(reviews_params)
    @review.bench = @bench
    @review.user = current_user
    if @review.save
      redirect_to bench_path(@bench)
    else
      render "new"
    end

  def destroy
  end

  end

  private 

  def reviews_params
    params.require(:review).permit(:description, :rating, :bench_id, :user_id)
  end

  def find_bench
    @bench = Bench.find(params[:bench_id])
  end

end