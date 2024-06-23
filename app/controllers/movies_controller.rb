class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to @movie, notice: "Movie successfully updated."
    else
      render :edit
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :rating, :total_gross, :released_on, :description)
  end
end
