class Cuisine < ApplicationRecord
  # Direct associations

  has_many   :favorites,
             :dependent => :destroy

  has_many   :dishes,
             :dependent => :destroy

  # Indirect associations

  has_many   :meals,
             :through => :favorites,
             :source => :meal

  # Validations

end
