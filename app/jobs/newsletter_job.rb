class NewsletterJob < Struct.new(:order)
  def perform
    Notifier.order_received(order)
  end
end

