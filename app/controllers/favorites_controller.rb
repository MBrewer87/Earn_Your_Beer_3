class FavoritesController < ApplicationController

  def show
    @beers = Beer.order("created_at DESC")

    @exercises = Exercise.order("created_at DESC")

  end
end
