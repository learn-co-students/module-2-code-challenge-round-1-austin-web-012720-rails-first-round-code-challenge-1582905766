class PowersController < ApplicationController
  before_action :find_power, only: [:show, :edit, :update]
  def index
    @powers = Power.all
  end

  def show
  end

  def edit
  end

  def update
    
    if @power.valid?
      @power.update
      redirect_to power_path(@power)
    else
      render 'edit'
    end
  end

  private

  def find_power
    @power = Power.find(params[:id])
  end
end
