class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    @powers = Power.all
  end
  
end
