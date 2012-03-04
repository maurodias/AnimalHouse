class Patologium < ActiveRecord::Base
  belongs_to :item
  belongs_to :especialidade
end
