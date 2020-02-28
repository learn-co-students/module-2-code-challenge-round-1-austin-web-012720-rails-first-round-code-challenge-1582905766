class PowersController < ApplicationController
  before_action :find_power, only: [:edit, :update, :show, :destroy]

  def show
  end

  def index
    @powers = Power.all
  end

  def new
    @power = Power.new
  end

  def create
    @power = Power.new(power_params)
      if @power.valid?
        @power.save
        redirect_to power_path(@power)
      else
        render "new"
      end
  end

  

  private

  def find_power
    @power = Power.find(params[:id])
  end

  def power_params
    params.require(:power).permit(:name)
  end

end
