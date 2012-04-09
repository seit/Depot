class Product < ActiveRecord::Base
  validates :titles, :description, :image_url, :presence=> true
  validates :price, :numericality=> {:greater_than_or_equal_to=> 0.01}
  validates :titles, :uniqueness=>true

  has_many :line_items

  #削除される前にensure_not_refereced_by_any_line_itemを走らせる
  before_destroy :ensure_not_referenced_by_any_line_item

  private
  def ensure_not_referenceed_by_any_line_item
    #line_itemが空の場合はtrue、空でなければ商品が参照されているので消されないようエラーを出す
    if line_items.empty?
      return true
    else
      errors.add(:base, '品目が存在します')
      return false
  end
end
