class Follow < ActiveRecord::Base
  belongs_to :follower , :class_name => 'Veterinario' , :foreign_key => 'follower_id' 
  belongs_to :followed , :class_name => 'Vetertinario' , :foreign_key => 'followed_id'
end
