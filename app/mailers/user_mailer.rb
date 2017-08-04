class UserMailer < ApplicationMailer
  default from: "admin@jungle.com"

  def order_report(order)
    @line_items = LineItem.where("order_id = ?", order.id)
    @user = order.email
    @order = order.id
    @url  = 'http://example.com/login'
    mail(to: @user, subject: "Order #: #{@order}")
  end
end
