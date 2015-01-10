class Character < ActiveRecord::Base
  belongs_to: :guild
  has_many: :titles
end
