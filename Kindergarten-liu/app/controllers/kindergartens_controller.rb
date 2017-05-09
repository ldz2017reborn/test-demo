class KindergartensController < ApplicationController
  def index
    @kindergartens = Kindergarten.all
  end
end
