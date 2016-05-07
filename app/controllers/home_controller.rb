class HomeController < ApplicationController
  def index
    @shoe_filter = ShoeFilter.new(shoe_filter_params)
    @shoes = @shoe_filter.result.order('created_at DESC').paginate(page: params[:page], per_page: 5)
  end

  protected

  def shoe_filter_params
    params[:shoe_filter]
  end
end