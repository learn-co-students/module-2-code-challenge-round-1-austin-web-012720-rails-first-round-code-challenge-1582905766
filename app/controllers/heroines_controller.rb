class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
  end
  
  def create
    @heroine= Heroine.new(heroine_params)

    #Attempting to save foreign keys into join table
    @hp = Heroinepower.new
    @hp.heroine_id = @heroine.id
    @hp.power_id = (params[:power_id])
    
    if @heroine.valid?
      @heroine.save
      @hp.save
      redirect_to @heroine
    else
      render :new
    end
  end

  private
  def heroine_params
   params.require(:heroine).permit(:name, :super_name, :power_id, :heroine_id)
  end

end
