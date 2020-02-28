class HeroinePowersController < ApplicationController
  def index
    @heroinepowers = HeroinePower.all
  end

  def show
    @heroinepower = HeroinePower.find(params[:id])
  end

  def new
    @heroinepower = Heroinepower.new
  end

  def create
    @heroinepower = Heroinepower.new(params)
    @heroinepower.save
  end
end
