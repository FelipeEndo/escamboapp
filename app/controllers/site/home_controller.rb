class Site::HomeController < SiteController

  def index
    @categories = Category.order_by_description
    @ads = Ad.desc_order 6
  end
end
