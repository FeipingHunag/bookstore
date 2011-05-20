class Admin::OrdersController < Admin::BaseController
  before_filter :find_order, :only => [:show, :update, :edit, :destroy]
  respond_to :html, :json

  def index
    @search = Order.search(params[:search])
    respond_with(:admin,@orders = @search.paginate(:page => params[:page], :per_page => 5))
  end

  def show
    respond_with(:admin, @orders)
  end

  def new
    respond_with(:admin, @order = Order.new)
  end

  # GET /orders/1/edit
  def edit
    respond_with(:admin, @order)
  end

  # POST /orders
  def create
    @order = order.new(params[:order])
    flash[:notice] = 'Successfully created order.' if @order.save
    respond_with(:admin, @order)
  end

  # PUT /orders/1
  def update
     flash[:notice] = 'Successfully updated order.' if @order.update_attributes(params[:order])
     respond_with(:admin, @order)
  end

  # DELETE /orders/1
  def destroy
    if @order.destroy
      flash[:notice] = "Sucessfully destroy order!"
    else
      flash[:error] = @order.errors.first.last
    end
    redirect_to :action => "index"
  end



  private
  def find_order
     @order = Order.find(params[:id])
  end
end

