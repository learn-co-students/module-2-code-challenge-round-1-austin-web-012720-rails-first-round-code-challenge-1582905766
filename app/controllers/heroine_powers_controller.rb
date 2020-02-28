class HeroinePowersController < ApplicationController
  def index
    @heroine_powers = HeroinePower.all
  end

  def show
    @heroinepower = HeroinePower.find(params[:id])
  end

  def new
    @heroinepower = HeroinePower.new
  end

  def create
    @heroinepower = HeroinePower.new(params)
    @heroinepower.save
  end
end
