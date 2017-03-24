class DashboardsController < ApplicationController

  def index
    @dogs = Dog.last_dogs
  end

end
