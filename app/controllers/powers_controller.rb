class PowersController < ApplicationController
  before_action :get_power, only: [:show, :edit, :update, :destroy]
  def index
    @powers = Power.all
  end

  def show
  end 

  def new
    @power = Power.new
  end 

  def edit
  end 

  def create
    @power = Power.new(power_params)

    if @power.valid?
      @power.save
    else
      render 'new'
    end
  end 

  def update
  end 

  def destroy
  end 

  private
    def power_params
      params.require(:power).permit(:name, :description)
    end 

    def get_power
      @power = Power.find(params[:id])
    end 
end
