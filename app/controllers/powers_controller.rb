class PowersController < ApplicationController
  
  before_action :set_power, only: [:edit, :update, :show]
  
  def index
    @powers = Power.all
  end

  def edit

  end

  def show
    
  end

  def update
    @power.update(power_params)
    redirect_to powers_path(@power)
  end
  private
  def power_params
    params.require(:power).permit(:name, :description)
  end

  def set_power
    @power = Power.find(params[:id])
  end 

end
