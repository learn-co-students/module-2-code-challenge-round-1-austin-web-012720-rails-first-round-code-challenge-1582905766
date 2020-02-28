class HeroinesController < ApplicationController
  
  before_action :set_heroine, only: [:show, :edit, :update]
  
  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.valid?
      @heroine.save
      redirect_to heroines_path(@heroine)
    else
      @heroine.errors.full_messages
      render 'new'
    end
  end

  def index
    @heroines = Heroine.all
  end

  def show
  end



  private
  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_ids)
  end

  def set_heroine
    @heroine = Heroine.find(params[:id])
  end 
end
