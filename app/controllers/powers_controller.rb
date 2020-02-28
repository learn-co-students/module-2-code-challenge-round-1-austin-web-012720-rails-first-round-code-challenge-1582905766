class PowersController < ApplicationController
  before_action :get_power, only: [:show, :new, :create, :edit]
  def index
    @powers = Power.all
  end

  private

  def power_params
    params.require(:power).permit(:name, :description)
  end
  def get_power
    @power = Power.find(params[:id])
  end


end
