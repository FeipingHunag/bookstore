class Order < ActiveRecord::Base
  has_many :line_items, :dependent => :destroy
  belongs_to :member

  PAYMENT_TYPES = ["支票", "网上银行"]
  STATUS = ["未处理", "已发货", "已签收", "已退货"]
  validates :name, :address, :email, :pay_type, :status, :presence => true
  validates :pay_type, :inclusion => PAYMENT_TYPES
  validates :status, :inclusion => STATUS

  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end

  def total_price
    line_items.to_a.sum {|line_item| line_item.total_price}
  end
end

