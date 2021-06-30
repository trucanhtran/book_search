class ProductsController < ApplicationController
  def index
    @category = Category.find_by(id: params[:category_id])
    @products = @category.products.all
    respond_to do |format|
      format.js
    end
  end

  def new

  end

  def show
    @category = Category.find_by(id: params[:category_id])
    @product = Product.find_by(id: params[:id])
  end
end
