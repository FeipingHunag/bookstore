module ApplicationHelper
  def current_cart
    Cart.find(session[:cart_id]) if session[:cart_id]
  end
end

