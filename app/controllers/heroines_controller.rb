class HeroinesController < ApplicationController
  before_action :find_heroine, only: [:edit, :update, :show, :destroy]

  def show
  end

  def index
    @heroines = Heroine.all
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)
      if @heroine.valid?
        @heroine.save
        redirect_to heroines_path(@heroine)
      else
        render "new"
      end
  end

  

  private

  def find_heroine
    @heroine = Heroine.find(params[:id])
  end

  def heroine_params
    params.require(:heroine).permit(:name, :super_name)
  end

end


