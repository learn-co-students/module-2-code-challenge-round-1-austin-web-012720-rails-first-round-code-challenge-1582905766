class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def new
    @heroine = Heroine.new
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def create
    @heroine = Heroine.new(name: heroine_params[:name], super_name: heroine_params[:super_name])


    if @heroine.valid?
      power = Power.find(heroine_params[:power_ids]) if heroine_params[:power_ids]
      @heroine.powers << power
      @heroine.save
      redirect_to heroine_path(@heroine)
    else
      @errors = @heroine.errors.full_messages
      render :new
    end

  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_ids)
  end

end
