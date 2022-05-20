class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :destroy]

  def destroy
    @movie.destroy
    redirect_to movies_url, notice: 'Movie was successfully destroyed.'
  end

  def index
    @movies = Movie.all
  end

  def show
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_movie
    @movie = Movie.find(params[:id])
  end
end
