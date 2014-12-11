class ExercisesController < ApplicationController

  before_action :authenticate_user!

  def index
    @exercises = Exercise.order("created_at DESC")
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
# This calculates in the controller since it depends on the form parameters, but I want it saved in the model. The last term is a weight scaling function.
    @exercise.calorie = if params[:intensity] == "Low"
                          (@exercise.staticexercise.calpermin_low * params[:duration].to_f * ((@exercise.user.weight - 170)/170+1)).to_f.round(2)
                        elsif params[:intensity] == "Medium"
                          (@exercise.staticexercise.calpermin_med * params[:duration].to_f * ((@exercise.user.weight - 170)/170+1)).to_f.round(2)
                        elsif params[:intensity] == "High"
                          (@exercise.staticexercise.calpermin_high * params[:duration].to_f * ((@exercise.user.weight - 170)/170+1)).to_f.round(2)
                        else
                          N/A
                        end

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
# This calculates in the controller since it depends on the form parameters, but I want it saved in the model. The last term is a weight scaling function.
    @exercise.calorie = if params[:intensity] == "Low"
                          (@exercise.staticexercise.calpermin_low * params[:duration].to_f * ((@exercise.user.weight - 170)/170+1)).to_f.round(2)
                        elsif params[:intensity] == "Medium"
                          (@exercise.staticexercise.calpermin_med * params[:duration].to_f * ((@exercise.user.weight - 170)/170+1)).to_f.round(2)
                        elsif params[:intensity] == "High"
                          (@exercise.staticexercise.calpermin_high * params[:duration].to_f * ((@exercise.user.weight - 170)/170+1)).to_f.round(2)
                        else
                          N/A
                        end

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
