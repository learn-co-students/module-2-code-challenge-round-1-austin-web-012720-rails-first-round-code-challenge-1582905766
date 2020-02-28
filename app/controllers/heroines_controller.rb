class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.all.find(params[:id])
  end

  def new
    @heroine_power = HeroinePower.new
    @heroine = Heroine.new
  end

  def create
    
    @heroine = Heroine.create(heroine_params)
    @heroine_power = HeroinePower.create(params[:heroine][:id], params[:power][:id])
    if @heroine.valid?
      @heroine.save
      redirect_to heroine_path(@heroine)
    else
      render 'new'
    end
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name)
  end

  # def h_p_params
  #   params.require(:heroine_power).permit(power_id, :heroine_id)
  # end

# in the middle of trying different things to get the powers to show up on the heroines page. not sure how to get the power and heroine id 
# to save in the db. or if thats even the right action to take. 
  
end
