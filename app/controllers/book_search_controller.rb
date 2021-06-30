class BookSearchController < ApplicationController
  def index
    @categories = Category.all
    @products = Product.all.limit(12)
  end

  def search
    @products = Product.where("lower(title) LIKE ?", "%#{params[:keyword]}%")
    respond_to do |format|
      format.js
    end
  end
end
