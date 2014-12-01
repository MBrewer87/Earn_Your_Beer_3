class StaticExercisesController < ApplicationController
  before_action :authenticate_user!
  def index
    @static_exercises = StaticExercise.all
  end

  def show
    @static_exercise = StaticExercise.find(params[:id])
  end

  def new
    @static_exercise = StaticExercise.new
  end

  def create
    @static_exercise = StaticExercise.new
    @static_exercise.exercise_cat_name = params[:exercise_cat_name]
    @static_exercise.calpermin_low = params[:calpermin_low]
    @static_exercise.calpermin_med = params[:calpermin_med]
    @static_exercise.calpermin_high = params[:calpermin_high]

    if @static_exercise.save
      redirect_to "/static_exercises", :notice => "Static exercise created successfully."
    else
      render 'new'
    end
  end

  def edit
    @static_exercise = StaticExercise.find(params[:id])
  end

  def update
    @static_exercise = StaticExercise.find(params[:id])

    @static_exercise.exercise_cat_name = params[:exercise_cat_name]
    @static_exercise.calpermin_low = params[:calpermin_low]
    @static_exercise.calpermin_med = params[:calpermin_med]
    @static_exercise.calpermin_high = params[:calpermin_high]

    if @static_exercise.save
      redirect_to "/static_exercises", :notice => "Static exercise updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @static_exercise = StaticExercise.find(params[:id])

    @static_exercise.destroy

    redirect_to "/static_exercises", :notice => "Static exercise deleted."
  end
end
