class HomeController < ApplicationController
  def index
    @shoes = Shoe.all
  end
end