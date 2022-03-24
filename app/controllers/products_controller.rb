class ProductsController < ApplicationController

  def index
    product = Product.all
    render json: product.as_json
  end

  def show
    product = Product.find(params[:id])
    render json: product.as_json
  end
end
