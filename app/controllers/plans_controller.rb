class PlansController < ApplicationController
    def index
        @plans = current_user.plans
    end
    
    def show
        @plan = Plan.find(params[:id])
        @exercises = @plan.exercises.order(:created_at)
    end

    def new
        @plan = Plan.new
    end

    def create
        @plan = Plan.new(plan_params)
        @plan.user = current_user
        if @plan.save 
            redirect_to plans_path
        else 
            render :new
        end
    end
    
    def toggle
        map = [:mon, :tue, :wed, :thu, :fri, :sat, :sun]
        @plan = Plan.find(params[:plan_id])
        @plan.send("#{map[params[:day_idx].to_i]}=", !@plan.send(map[params[:day_idx].to_i]))
        @plan.save
        redirect_to plan_path(@plan)
    end

    def destroy
        plan = Plan.find(params[:id])
        plan.destroy
        redirect_to plans_path
    end


    private
    def plan_params
        params.require(:plan).permit(:name, :user_id)
    end
end