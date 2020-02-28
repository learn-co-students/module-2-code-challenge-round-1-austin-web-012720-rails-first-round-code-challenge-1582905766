class HeroinesController < ApplicationController
  before_action :find_heroine , only: [:edit, :show, :update, :destroy]

  def index
    @heroines = Heroine.all
  end

  def show
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.valid?
      @heroine.save
      redirect_to heroine_path(@heroine)
    else
      render "new"
      flash.now[:notice] = @heroine.errors.messages
    end
  end

  private
  def heroine_params
    params.require(:heroine).permit(:name,:super_name, :power_id)
  end

  def find_heroine
    @heroine = Heroine.find(params[:id])
  end
end
