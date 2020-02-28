class PowersController < ApplicationController
  before_action :set_power, only: [:show, :edit, :update]
  
  def index
    @powers = Power.all
  end

  def show
  end
  
  def edit
    @heroines = Heroine.all
  end

  def update
    @power.update(power_params)
    params[:power][:heroines].each do |heroine_id|
      @power.heroines << Heroine.find_by(id: heroine_id.to_i)
    end
    # binding.pry
    if @power.valid?
      @power.save
      redirect_to @power
    else
      flash[:messages] = @power.errors.full_messages
      redirect_to edit_power_path
    end
  end


  private
  def set_power
    @power = Power.find_by(id: params[:id])
  end

  def power_params
    params.require(:power).permit(:name, :description, :heroines)
  end
end
