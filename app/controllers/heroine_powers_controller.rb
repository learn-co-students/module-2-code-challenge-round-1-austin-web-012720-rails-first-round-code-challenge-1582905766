class HeroinePowersController < ApplicationController
  def index
    @heroinepowers = Heroinepower.all
  end

  def show
    @heroinepower = Heroinepower.find(params[:id])
  end

  def new
    @heroinepower = Heroinepower.new
  end

  def create
    @heroinepower = Heroinepower.new(params)
    @heroinepower.save
  end
end
