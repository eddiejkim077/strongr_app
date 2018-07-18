class ExercisesController < ApplicationController

def new
@plan = Plan.find(params[:plan_id])
@exercise = Exercise.new(plan_id: @plan.id)
end

def create
    @plan = Plan.find(params[:plan_id])
    @exercise = Exercise.new(exercise_params)
    @exercise.user_id = current_user.id
    @exercise.plan_id = params[:plan_id].to_i
    if @exercise.save
        redirect_to plan_path(params[:plan_id])
    else
        p '*' * 100
        p @exercise.errors
        p '*' * 100
        render :new
    end
end

def exercise_params
    params.require(:exercise).permit(:name, :body_part, :set, :reps, :weight)
end
end

# def show

# end
#coming from show html.erb, showing the name of this plan iterating through exisitng exercisesbutton to remove exercises, and add button to add exercise which is 
#link to 'Add_exercise' work first on crudding plans not exercises view all plans, and remove

#show page to the plan that will have adding exercises