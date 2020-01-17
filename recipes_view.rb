class RecipesView
  def display_recipes(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1} - #{recipe.name} : #{recipe.description}"
    end
  end

  def ask_user_for_string(element)
    puts "#{element.capitalize}, please?"
    print "> "
    return gets.chomp
  end

  def ask_user_for_index
    puts "Index, please?"
    print "> "
    return gets.chomp.to_i - 1
  end
end
