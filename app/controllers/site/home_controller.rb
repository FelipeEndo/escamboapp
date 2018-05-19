class Site::HomeController < ApplicationController
  layout 'site'
  def index
    @categories = Category.order_by_description
    @ads = Ad.last_six_by_created_desc
  end
end
