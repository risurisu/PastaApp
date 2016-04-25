class PartiesController < ApplicationController

  #before_action :get_user_or_redirect_to_log_in

  def index
    @parties = Party.all
  end

  def show
    @party = Party.find params[:id]
    @order = Order.new
  end

  def create
    party = Party.create party_params
    redirect_to parties_path
  end

  def edit
    @party = Party.find params[:id]
  end

  def update
    party = Party.find params[:id]
    party.update party_params
    redirect_to parties_path
  end

  def new
    @party = Party.new
  end

  def destroy
    party = Party.find params[:id]


  end

  private

  def party_params
    params.require(:party).permit(:user_id, :order_id, :table_number, :has_paid)
  end

end
