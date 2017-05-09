class KindergartensController < ApplicationController
  def index
    @kindergartens = Kindergarten.all
  end

  def show
    @kindergarten = Kindergarten.find(params[:id])
  end

  def edit
    @kindergarten = Kindergarten.find(params[:id])
  end
  
  def new
    @kindergarten = Kindergarten.new
  end

  def create
    @kindergarten = Kindergarten.new(kindergarten_params)
    @kindergarten.save
      redirect_to kindergartens_path
  end

  private

  def kindergarten_params
    params.require(:kindergarten).permit(:title, :location, :price)
  end

end
