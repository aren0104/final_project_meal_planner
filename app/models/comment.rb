class Comment < ApplicationRecord
  # Direct associations

  belongs_to :dish,
             :counter_cache => true

  belongs_to :author,
             :class_name => "User"

  # Indirect associations

  # Validations

end
