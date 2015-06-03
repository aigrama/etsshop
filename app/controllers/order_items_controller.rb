class OrderItemsController < ApplicationController


  def create
    @order = current_order
    @order_item = @order.order_items.new(order_item_params)
    @order.save
    @order_item.save
    session[:order_id] = @order.id

    respond_to do |format|
      format.html {  redirect_to '/' }
      format.js {render layout: false, :content_type => 'text/javascript'}
    end

  end

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_item_params)
    @order_items = @order.order_items

    respond_to do |format|
      format.html do
        redirect_to '/'
      end
      format.js {render layout: false, :content_type => 'text/javascript'}
    end
  end

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = @order.order_items
    respond_to do |format|
      format.html do
        redirect_to '/'
      end
      format.js {render layout: false, :content_type => 'text/javascript'}
    end
  end
private
  def order_item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end
end
