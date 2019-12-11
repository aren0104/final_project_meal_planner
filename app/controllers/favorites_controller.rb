class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.page(params[:page]).per(10)

    render("favorite_templates/index.html.erb")
  end

  def show
    @favorite = Favorite.find(params.fetch("id_to_display"))

    render("favorite_templates/show.html.erb")
  end

  def new_form
    @favorite = Favorite.new

    render("favorite_templates/new_form.html.erb")
  end

  def create_row
    @favorite = Favorite.new

    @favorite.dish_id = params.fetch("dish_id")
    @favorite.fan_id = params.fetch("fan_id")
    @favorite.meal_id = params.fetch("meal_id")
    @favorite.cuisine_id = params.fetch("cuisine_id")

    if @favorite.valid?
      @favorite.save

      redirect_back(:fallback_location => "/favorites", :notice => "Favorite created successfully.")
    else
      render("favorite_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_dish
    @favorite = Favorite.new

    @favorite.dish_id = params.fetch("dish_id")
    @favorite.fan_id = params.fetch("fan_id")
    @favorite.meal_id = params.fetch("meal_id")
    @favorite.cuisine_id = params.fetch("cuisine_id")

    if @favorite.valid?
      @favorite.save

      redirect_to("/dishes/#{@favorite.dish_id}", notice: "Favorite created successfully.")
    else
      render("favorite_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_cuisine
    @favorite = Favorite.new

    @favorite.dish_id = params.fetch("dish_id")
    @favorite.fan_id = params.fetch("fan_id")
    @favorite.meal_id = params.fetch("meal_id")
    @favorite.cuisine_id = params.fetch("cuisine_id")

    if @favorite.valid?
      @favorite.save

      redirect_to("/cuisines/#{@favorite.cuisine_id}", notice: "Favorite created successfully.")
    else
      render("favorite_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_meal_plan
    @favorite = Favorite.new

    @favorite.dish_id = params.fetch("dish_id")
    @favorite.fan_id = params.fetch("fan_id")
    @favorite.meal_id = params.fetch("meal_id")
    @favorite.cuisine_id = params.fetch("cuisine_id")

    if @favorite.valid?
      @favorite.save

      redirect_to("/meal_plans/#{@favorite.meal_id}", notice: "Favorite created successfully.")
    else
      render("favorite_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @favorite = Favorite.find(params.fetch("prefill_with_id"))

    render("favorite_templates/edit_form.html.erb")
  end

  def update_row
    @favorite = Favorite.find(params.fetch("id_to_modify"))

    @favorite.dish_id = params.fetch("dish_id")
    @favorite.fan_id = params.fetch("fan_id")
    @favorite.meal_id = params.fetch("meal_id")
    @favorite.cuisine_id = params.fetch("cuisine_id")

    if @favorite.valid?
      @favorite.save

      redirect_to("/favorites/#{@favorite.id}", :notice => "Favorite updated successfully.")
    else
      render("favorite_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_user
    @favorite = Favorite.find(params.fetch("id_to_remove"))

    @favorite.destroy

    redirect_to("/users/#{@favorite.fan_id}", notice: "Favorite deleted successfully.")
  end

  def destroy_row_from_dish
    @favorite = Favorite.find(params.fetch("id_to_remove"))

    @favorite.destroy

    redirect_to("/dishes/#{@favorite.dish_id}", notice: "Favorite deleted successfully.")
  end

  def destroy_row_from_cuisine
    @favorite = Favorite.find(params.fetch("id_to_remove"))

    @favorite.destroy

    redirect_to("/cuisines/#{@favorite.cuisine_id}", notice: "Favorite deleted successfully.")
  end

  def destroy_row_from_meal
    @favorite = Favorite.find(params.fetch("id_to_remove"))

    @favorite.destroy

    redirect_to("/meal_plans/#{@favorite.meal_id}", notice: "Favorite deleted successfully.")
  end

  def destroy_row
    @favorite = Favorite.find(params.fetch("id_to_remove"))

    @favorite.destroy

    redirect_to("/favorites", :notice => "Favorite deleted successfully.")
  end
end
