class StoreController < ApplicationController
  def index
    @products = Product.order(:titles)
  end
end
