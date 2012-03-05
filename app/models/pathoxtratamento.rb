class Pathoxtratamento < ActiveRecord::Base
  belongs_to :itemlink
  belongs_to :patologia
  belongs_to :tratamento
end
