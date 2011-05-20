class CombineItemsInCart < ActiveRecord::Migration
def self.up
    # replace multiple items for a single book in a cart with a single item
    Cart.all.each do |cart|
      # count the number of each book in the cart
      sums = cart.line_items.group(:book_id).sum(:quantity)

      sums.each do |book_id, quantity|
        if quantity > 1
          # remove individual items
          cart.line_items.where(:book_id=>book_id).delete_all

          # replace with a single item
          cart.line_items.create(:book_id=>book_id, :quantity=>quantity)
        end
      end
    end
  end

  def self.down
    # split items with quantity>1 into multiple items
    LineItem.where("quantity>1").each do |line_item|
      # add individual items
      line_item.quantity.times do
        LineItem.create :cart_id=>line_item.cart_id,
          :book_id=>line_item.book_id, :quantity=>1
      end

      # remove original item
      line_item.destroy
    end
  end
end

