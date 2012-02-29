class Edicao < ActiveRecord::Base
  belongs_to :veterinario
  belongs_to :item
end
