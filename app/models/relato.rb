class Relato < ActiveRecord::Base
  belongs_to :item
  belongs_to :patologia
end
