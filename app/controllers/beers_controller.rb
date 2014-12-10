class BeersController < ApplicationController
    before_action :authenticate_user!

  def index
    @beers = Beer.order("created_at DESC")
  end

  def show
    @beer = Beer.find(params[:id])
  end

  def new
    @beer = Beer.new
  end

  def create
    @beer = Beer.new
    @beer.beer_type = params[:beer_type]
    @beer.beer_name = params[:beer_name]
    @beer.num_consumed = params[:num_consumed]
    @beer.star_rating = params[:star_rating]
    @beer.notes = params[:notes]
    @beer.fav_save = params[:fav_save]
    @beer.user_id = params[:user_id]

    if @beer.save
      redirect_to "/beers", :notice => "Beer created successfully."
    else
      render 'new'
    end
  end

  def edit
    @beer = Beer.find(params[:id])
  end

  def update
    @beer = Beer.find(params[:id])

    @beer.beer_type = params[:beer_type]
    @beer.beer_name = params[:beer_name]
    @beer.num_consumed = params[:num_consumed]
    @beer.star_rating = params[:star_rating]
    @beer.notes = params[:notes]
    @beer.fav_save = params[:fav_save]
    @beer.user_id = params[:user_id]

    if @beer.save
      redirect_to "/beers", :notice => "Beer updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @beer = Beer.find(params[:id])

    @beer.destroy

    redirect_to "/beers", :notice => "Beer deleted."
  end
end
