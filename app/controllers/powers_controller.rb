class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    @power = Power.find(params[:id])
  end

  def edit
    @power = Power.find(params[:id])
  end

  def update
    @power.update(power_params)

  end

  private
    def power_params
      params.require(:power).permit(:name, :description, :heroine_id)
    end

end
