class BookSearchController < ApplicationController
  def index
    @categories = Category.all
    @products = Product.all.limit(12)
  end

  def search
    @products = Product.where("title LIKE ?", "%#{params[:keyword]}%")
    render json: @products
  end
end
