class FavoritesController < ApplicationController

  def show
    @beers = current_user.beers.order("created_at DESC")

    @exercises = current_user.exercises.order("created_at DESC")

  end
end
