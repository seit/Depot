class LineItem < ActiveRecord::Base
  #line_itemのレコードはcartとproductの子レコードであることを宣言
  belongs_to :product
  belongs_to :cart
end
