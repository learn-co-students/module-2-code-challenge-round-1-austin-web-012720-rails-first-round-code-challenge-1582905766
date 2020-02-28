class HeroinePowersController < ApplicationController
  def index
    @heroine_powers = HeroinePower.all
  end

  def show
    @heroine_power = HeroinePower.find(params[:id])
  end

  def new
    @heroine_power = HeroinePower.new
  end

  def edit
  end

  def create
    @heroine_power = Heroine.new(heroine_params)

    if @heroine_power.valid?
      @heroine_power.save
      flash[:notice] = 'New Heroine Created!'
      redirect_to heroine_path(@heroine)
    else
      @errors = @heroine_power.errors.full_messages

      flash[:errors] = @heroine_power.errors.full_messages
      render 'new'
    end 
  end

  def update
  end

  def destroy
  end 

  private
    def hp_params
      params.require(:herone_power).permit(:heroine_id, :power_id)
    end 
end 