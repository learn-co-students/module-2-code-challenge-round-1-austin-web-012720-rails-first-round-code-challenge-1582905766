class PowersController < ApplicationController
  before_action :find_power , only: [:edit, :show, :update, :destroy]

  def index
    @powers = Power.all
  end

  def show

  end

  def edit

  end

  def update
    @test_power = Power.new(power_params)
    if @test_power.valid?
      @power.update(power_params)
      @power.save
      redirect_to power_path(@power)
    else
      render "edit"
    end
  end

  private

  def power_params
    params.require(:power).permit(:name,:description, :heroines)
  end

  def find_power
    @power = Power.find(params[:id])
  end
end
