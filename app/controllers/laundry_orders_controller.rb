class LaundryOrdersController < ApplicationController
  def index
    @laundry_orders = LaundryOrder.all
  end

  def new
    @laundry_order = LaundryOrder.new
  end

  def create
    @laundry_order = LaundryOrder.new(laundry_order_params)

    if @laundry_order.save
      redirect_to laundry_orders_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @laundry_order = LaundryOrder.find(params[:id])
  end

  def update
    @laundry_order = LaundryOrder.find(params[:id])

    if @laundry_order.update(laundry_order_params)
      redirect_to laundry_orders_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @laundry_order = LaundryOrder.find(params[:id])
    @laundry_order.destroy

    redirect_to laundry_orders_path
  end

  private

  def laundry_order_params
    params.require(:laundry_order).permit(
      :name,
      :clothes,
      :amount,
      :pickup_time,
      :status
    )
  end
end