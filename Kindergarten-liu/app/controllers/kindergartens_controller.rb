class KindergartensController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]

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
    if @kindergarten.save
      redirect_to kindergartens_path
    else
      render :new
    end
  end

  def update
    @kindergarten = Kindergarten.find(params[:id])
    if @kindergarten.update(kindergarten_params)
      redirect_to kindergartens_path, notice: "Update Success"
    else
      render :edit
    end
  end

  def destroy
    @kindergarten = Kindergarten.find(params[:id])
    @kindergarten.destroy
    flash[:alert] = "Kindergarten deleted"
    redirect_to kindergartens_path
  end

  private

  def kindergarten_params
    params.require(:kindergarten).permit(:title, :location, :price)
  end

end
