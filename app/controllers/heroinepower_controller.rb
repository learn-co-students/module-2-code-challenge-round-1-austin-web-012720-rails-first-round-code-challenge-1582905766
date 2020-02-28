class HeroinePowerController < ApplicationController
    def index
      @heroinepower = HeroinePower.all
    end

    def create
        @heroinepower = HeroinePower.new
        validates :super_name, presence: true
        validates :name, presence: true
    end
end
  