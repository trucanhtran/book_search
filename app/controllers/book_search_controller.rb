class BookSearchController < ApplicationController
  def index
    @categories = Category.all
  end

  def search
    @products = Product.where("title LIKE ?", "%#{params[:keyword]}")
    render json: @products
  end
end
