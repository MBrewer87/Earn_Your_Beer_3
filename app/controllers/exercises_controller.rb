class ExercisesController < ApplicationController

before_action :authenticate_user!

  def index
    @exercises = Exercise.all
  end

  def show
    @exercise = Exercise.find(params[:id])
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new
    @exercise.exercise_category = params[:exercise_category]
    @exercise.duration = params[:duration]
    @exercise.intensity = params[:intensity]
    @exercise.favsave = params[:favsave]
    @exercise.user_id = params[:user_id]

    if @exercise.save
      redirect_to "/exercises", :notice => "Exercise created successfully."
    else
      render 'new'
    end
  end

  def edit
    @exercise = Exercise.find(params[:id])
  end

  def update
    @exercise = Exercise.find(params[:id])

    @exercise.exercise_category = params[:exercise_category]
    @exercise.duration = params[:duration]
    @exercise.intensity = params[:intensity]
    @exercise.favsave = params[:favsave]
    @exercise.user_id = params[:user_id]

    if @exercise.save
      redirect_to "/exercises", :notice => "Exercise updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @exercise = Exercise.find(params[:id])

    @exercise.destroy

    redirect_to "/exercises", :notice => "Exercise deleted."
  end
end
