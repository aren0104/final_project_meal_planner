class MealPlansController < ApplicationController
  def index
    @meal_plans = MealPlan.page(params[:page]).per(10)

    render("meal_plan_templates/index.html.erb")
  end

  def show
    @favorite = Favorite.new
    @meal_plan = MealPlan.find(params.fetch("id_to_display"))

    render("meal_plan_templates/show.html.erb")
  end

  def new_form
    @meal_plan = MealPlan.new

    render("meal_plan_templates/new_form.html.erb")
  end

  def create_row
    @meal_plan = MealPlan.new


    if @meal_plan.valid?
      @meal_plan.save

      redirect_back(:fallback_location => "/meal_plans", :notice => "Meal plan created successfully.")
    else
      render("meal_plan_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @meal_plan = MealPlan.find(params.fetch("prefill_with_id"))

    render("meal_plan_templates/edit_form.html.erb")
  end

  def update_row
    @meal_plan = MealPlan.find(params.fetch("id_to_modify"))


    if @meal_plan.valid?
      @meal_plan.save

      redirect_to("/meal_plans/#{@meal_plan.id}", :notice => "Meal plan updated successfully.")
    else
      render("meal_plan_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @meal_plan = MealPlan.find(params.fetch("id_to_remove"))

    @meal_plan.destroy

    redirect_to("/meal_plans", :notice => "Meal plan deleted successfully.")
  end
end
