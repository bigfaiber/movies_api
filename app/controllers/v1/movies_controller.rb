class V1::MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render json: @movies, status: :ok
  end

  def show
    @movie = Movie.find(params[:id])
    render json: @movie, status: 200
  end
  
  def create
    @movie = Movie.new(movie_params)
    @movie.save
    render json: @movie, status: :created
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(movie_params)
    render json: @movie, status: 200
  end

  def destroy
    @movie = Movie.find(params[:id])
    if @movie.destroy
      head(:ok)
    else
      head(:unprocessable_entity)
    end
  end
  private

  def movie_params
    params.require(:movie).permit(:title, :genre, :sinopsis, :rating)
  end
end