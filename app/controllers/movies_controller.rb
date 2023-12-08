class MoviesController < ApplicationController
  def index
    @movies = ["Iron Man", "The Incredible Hulk", "Iron Man 2", "Thor", "Captain America: The First Avenger"]
  end
end