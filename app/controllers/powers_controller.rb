class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    @power = Power.find(params[:id])
  end

  def edit
    @power = Power.find(params[:id])
  end

  def update
    @power = Power.find(params[:id])
    update_params[:heroine_ids].each do |heroine_id|
      if !heroine_id.empty?
        heroine = Heroine.find(heroine_id)
        if !@power.heroines.include?(heroine)
          @power.heroines << heroine
          @power.save
        end
      end


    end
    redirect_to power_path(@power)
  end

  private

  def update_params
    params.require(:power).permit(heroine_ids: [])
  end

end
