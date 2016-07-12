class ProductsController < ApplicationController
  #CRUD
  def index
    render template: 'product/index.html.erb', locals: {
      product: Product.all,
        # locale: [:en],
        # formats: [:html], variants: [], handlers: [:raw, :erb, :html, :builder, :ruby, :coffee, :jbuilder]
    }
  end

  def show
    if Product.exists?(params[:id])
      render template: 'product/show.html.erb', locals: {
        product: Product.find(params[:id])
      #   locale: [:en],
      #   formats: [:html], variants: [], handlers: [:raw, :erb, :html, :builder, :ruby, :coffee, :jbuilder]
      }
    elsif product.quantity = 0
      render
    else
      render html: "Not Found", status: 404
    end
  end
end
