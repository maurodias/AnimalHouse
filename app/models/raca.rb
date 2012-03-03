class Raca < ActiveRecord::Base
  belongs_to :animal
  belongs_to :item
end
