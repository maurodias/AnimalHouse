class Patologia < ActiveRecord::Base
  belongs_to :especialidade
  belongs_to :item
end
