class HeroinesController < ApplicationController
  before_action :get_heroine, only: [:show, :edit]
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
        redirect_to @heroine
      else
        flash[:message] = @heroine.errors.full_messages
        redirect_to new_heroine_path
      end
  end

  def edit
  end

  private 

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, power_attributes: [:name, :description])
  end

  def get_heroine
    @heroine = Heroine.find(params[:id])
  end
end

# <%= f.text_field :super_name %>  
# <%= f.fields_for :powers do |ff| %>
