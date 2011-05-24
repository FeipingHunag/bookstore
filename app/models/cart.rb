class Cart < ActiveRecord::Base
  has_many :line_items, :dependent => :destroy

  def add_book(book_id)
    current_item = line_items.where(:book_id => book_id).first
    if current_item
      current_item.quantity += 1
    else
      current_item = LineItem.new(:book_id=>book_id)
      line_items << current_item
    end
    current_item
  end

  def total_books
    line_items.sum(:quantity)
  end

  def total_price
    line_items.to_a.sum {|line_item| line_item.total_price}
  end
end

