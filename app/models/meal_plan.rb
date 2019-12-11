class MealPlan < ApplicationRecord
  # Direct associations

  has_many   :favorites,
             :foreign_key => "meal_id",
             :dependent => :nullify

  # Indirect associations

  # Validations

end
