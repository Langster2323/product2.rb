class DashboardController < ApplicationController
  def home
    render template: 'dashboard/index.html.erb', locals: {

    }
  end

  def show
    if Product.exists?(params[:id])
      render template: 'dashboard/show.html.erb', locals: {
        product: Product.find(params[:id])
    elsif product.quantity = 0
      render
    else
      render html: "Not Found", status: 404
    end
  end
end
