class StoreController < ApplicationController
#storeは商品を見せる(販売する)タスク
  def index
    @products = Product.order(:titles)
  end
end
