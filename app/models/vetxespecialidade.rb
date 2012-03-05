class Vetxespecialidade < ActiveRecord::Base
  belongs_to :itemlink
  belongs_to :veterinario
  belongs_to :especialidade
end
