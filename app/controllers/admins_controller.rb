class AdminsController < ApplicationController

def index
  @foods = Food.all
end

def show
  @food = Food.find params[:id]
end

def edit
  @food = Food.find params[:id]
end

def update
  food = Food.find params[:id]
  food.update food_params
  redirect_to foods_path
end

def new
  @food = Food.new
end

def create
  food = Food.create food_params.merge({user_id: current_user.id})
  redirect_to profile_path
end

def destroy
  food = Food.find params[:id]
  food.destroy
  redirect_to profile_path
end

private

def food_params
  params.require(:food).permit(:name, :description, :price)
end







end
