# frozen_string_literal: true

# Sets the Movies Review cycle of adding, editing, updating and deleting
class MoviesController < ApplicationController
  before_action :set_movie, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[index show]

  def index
    @movies = Movie.all
  end

  def show
    @reviews = Review.where(movie_id: @movie.id).order('created_at DESC')

    @avg_review = @reviews.blank? ? 0 : @reviews.average(:rating).round(2)
  end

  def new
    @movie = current_user.movies.build
  end

  def edit; end

  def create
    @movie = current_user.movies.build(movie_params)

    respond_to do |format|
      if @movie.save
        format.html { redirect_to @movie, notice: 'Movie successfully created.' }
        format.json { render :show, status: :created, location: @movie }
      else
        format.html { render :new }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to @movie, notice: 'Movie successfully updated.' }
        format.json { render :show, status: :ok, location: @movie }
      else
        format.html { render :edit }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @movie.destroy
    respond_to do |format|
      format.html { redirect_to movies_url, notice: 'Movie successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :description, :movie_length, :director, :rating, :image)
  end
end
