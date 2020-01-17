require_relative "recipes_view"
require_relative "recipe"

class RecipesController
  def initialize(cookbook)
    @cookbook = cookbook
    @recipes_view = RecipesView.new
  end

  def list
    display_recipes
  end

  def create
    name = @recipes_view.ask_user_for_string("name")
    description = @recipes_view.ask_user_for_string("description")
    recipe = Recipe.new(name, description)
    @cookbook.add(recipe)
    display_recipes
  end

  def destroy
    display_recipes
    index = @recipes_view.ask_user_for_index
    @cookbook.remove(index)
    display_recipes
  end

  private

  def display_recipes
    recipes = @cookbook.all
    @recipes_view.display_recipes(recipes)
  end

end
