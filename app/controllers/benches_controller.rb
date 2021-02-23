class BenchesController < ApplicationController
  before_action :fetch_bench, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]


  def index
    @benches = Bench.all
  end

  def show
    @bench = Bench.find(params[:id])
  end

  def new
    @bench = Bench.new
  end

  def create
    @bench = Bench.new(benches_params)
    if @bench.save
      redirect_to bench_path(@bench)
    else
      render "new"
    end
  end

  def edit
  end

  def update
    @bench.update(benches_params)
    redirect_to bench_path(@bench)
  end

  def destroy
    @bench.destroy
    redirect_to bench_path
  end

  private

  def fetch_bench
    @bench = Bench.find(params[:id])
  end

  def benches_params
    params.require(:bench).permit(:name, :location, :city, :score)
  end
end
