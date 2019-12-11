class Favorite < ApplicationRecord
  # Direct associations

  belongs_to :meal,
             :required => false,
             :class_name => "MealPlan",
             :counter_cache => true

  belongs_to :cuisine

  belongs_to :dish,
             :counter_cache => true

  belongs_to :user,
             :foreign_key => "fan_id",
             :counter_cache => true

  # Indirect associations

  # Validations

end
