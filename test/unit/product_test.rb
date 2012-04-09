require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "product attributes must not be empty" do
    product = product.new
    assert product.invalid?
    assert product.errors[:titles].any?
    assert product.errors[:description].any?
    assert product.errors[:price].any?
  end
end
