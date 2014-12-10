class UsersController < ApplicationController

  before_action :authenticate_user!
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.username = params[:username]
    @user.email = params[:email]
    @user.weight = params[:weight]
    @user.encrypted_password = params[:encrypted_password]

    if @user.save
      redirect_to "/users", :notice => "User created successfully."
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    @user.username = params[:username]
    @user.email = params[:email]
    @user.weight = params[:weight]
    @user.encrypted_password = params[:encrypted_password]

    if @user.save
      redirect_to "/users", :notice => "User updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])

    @user.destroy

    redirect_to "/users", :notice => "User deleted."
  end

  def weightedit
    @user = User.find(params[:id])
    @exercises = Exercise.all
    @beers = Beer.all
  end

  def weightupdate
    @user = User.find(params[:id])
    @user.weight = params[:weight]

    if @user.save
      redirect_to "/", :notice => "Weight updated successfully! Earn that beer."
    else
      render 'weight_edit'
    end
  end

end
