class HeroinesController < ApplicationController
  before_action :get_heroine, only: [:show, :edit, :update, :destroy]
  def index
    @heroines = Heroine.all
  end

  def show
  end 

  def new
    @heroine = Heroine.new
  end 

  def edit
  end 

  def create
    @heroine = Heroine.new(heroine_params)

    if @heroine.valid?
      @heroine.save
      flash[:notice] = 'New Heroine Created!'
      redirect_to heroine_path(@heroine)
    else
      @errors = @heroine.errors.full_messages

      flash[:errors] = @heroine.errors.full_messages
      render 'new'
    end 
  end 
  
  def update
  end 

  def destroy
  end 

  private
    def heroine_params
      params.require(:heroine).permit(:name, :super_name)
    end 

    def get_heroine
      @heroine = Heroine.find(params[:id])
    end 
end
