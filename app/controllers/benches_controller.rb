class BenchesController < ApplicationController
  before_action :fetch_bench, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
   @benches = Bench.all
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
  end

  def show
    @bench = Bench.find(params[:id])
    @reviews = @bench.reviews
    @review = Review.new
  end

  def new
    @bench = Bench.new
  end

  def create
    @bench = Bench.new(benches_params)
    @bench.user = current_user
    if @bench.save
      redirect_to bench_path(@bench)
    else
      render "new"
    end
  end

  def edit
    @bench = Bench.find(params[:id])
  end

  def update
    # @bench.update(benches_params)
    # redirect_to bench_path(@bench)
    @bench = Bench.find(params[:id])
    @bench.update(benches_params)
    redirect_to bench_path(@bench)
  end

  def destroy
    @bench = Bench.find(params[:id])
    @bench.user = current_user
    @bench.destroy
    redirect_to benches_path
    end

  private

  def fetch_bench
    @bench = Bench.find(params[:id])
  end

  def benches_params
    params.require(:bench).permit(:name, :location, :city, :score, :photo)
  end

end
