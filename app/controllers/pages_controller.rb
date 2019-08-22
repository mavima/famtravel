class PagesController < ApplicationController
  def home
    @playground = Category.where(name: "Playground").first
    @activity = Category.where(name: "Activity").first
    @restaurant = Category.where(name: "Restaurant").first
    @restroom = Category.where(name: "Restroom").first
  end

end
