class ApplicationController < ActionController::Base
  protect_from_forgery

  private
  def current_cart
    #データベースからユーザーのカートを検索
    cart.find(session[:cart_id])
  rescue ActiveRecrd::RecordNotFound
    #カートを持ってなければ新規に作成
    cart = Cart.create
    session[:cart_id] = cart.id
    cart
  end
end
