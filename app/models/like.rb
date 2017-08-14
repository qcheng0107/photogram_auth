class Like < ApplicationRecord

belongs_to :user
belongs_to :photo

validates :user_id, :presence => true, :uniqueness => { :scope => :photo_id }

end
