class StaticBeersController < ApplicationController

  before_action :authenticate_user!
  def index
    @static_beers = StaticBeer.all
  end

  def show
    @static_beer = StaticBeer.find(params[:id])
  end

  def new
    @static_beer = StaticBeer.new
  end

  def create
    @static_beer = StaticBeer.new
    @static_beer.beer_cat_name = params[:beer_cat_name]
    @static_beer.calpertype = params[:calpertype]

    if @static_beer.save
      redirect_to "/static_beers", :notice => "Static beer created successfully."
    else
      render 'new'
    end
  end

  def edit
    @static_beer = StaticBeer.find(params[:id])
  end

  def update
    @static_beer = StaticBeer.find(params[:id])

    @static_beer.beer_cat_name = params[:beer_cat_name]
    @static_beer.calpertype = params[:calpertype]

    if @static_beer.save
      redirect_to "/static_beers", :notice => "Static beer updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @static_beer = StaticBeer.find(params[:id])

    @static_beer.destroy

    redirect_to "/static_beers", :notice => "Static beer deleted."
  end
end
