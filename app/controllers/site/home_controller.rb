class Site::HomeController < ApplicationController
  layout 'site'
  def index
    raise 'error'
    @categories = Category.all
  end
end
