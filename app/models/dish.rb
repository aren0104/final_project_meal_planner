class Dish < ApplicationRecord
  # Direct associations

  belongs_to :cuisine

  has_many   :favorites,
             :dependent => :destroy

  has_many   :comments,
             :dependent => :destroy

  # Indirect associations

  has_many   :fans,
             :through => :favorites,
             :source => :user

  has_many   :meals,
             :through => :favorites,
             :source => :meal

  # Validations

end
