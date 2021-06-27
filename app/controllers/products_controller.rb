class ProductsController < ApplicationController
  def index
    @category = Category.find_by(id: params[:category_id])
    @products = @category.products.all
  end

  def new

  end

  def show
  end
end
