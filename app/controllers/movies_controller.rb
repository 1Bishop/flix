class MoviesController < ApplicationController
  def index
    @movies = Movie.released
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.valid?
      @movie.update(movie_params)
      redirect_to movie_path(format: :html)
    else
      format.html { render :edit, status: :unprocessable_entity }
    end

  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    respond_to do |format|
      if @movie.save
        redirect_to @movie, turbo_stream: :replace
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_url(format: :html), status: :see_other
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :description, :rating, :released_on, :total_gross,
                                  :director, :duration, :image_file_name)
  end

end