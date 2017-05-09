class KindergartensController < ApplicationController
  def index
    @kindergartens = Kindergarten.all
  end

  def new
    @kindergarten = Kindergarten.new
  end
end
