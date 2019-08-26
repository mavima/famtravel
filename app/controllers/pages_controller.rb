class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def home
    @playground = Category.find_by(name: "Playground")
    @activity = Category.find_by(name: "Activity")
    @restaurant = Category.find_by(name: "Restaurant")
    @restroom = Category.find_by(name: "Restroom")
  end

  def about
  end
end
