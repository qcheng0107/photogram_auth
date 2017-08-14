class Photo < ApplicationRecord

belongs_to :user #add :required => false if want to make the presence of foreign key column optional
has_many :comments
has_many :likes
has_many :fans, :through => :likes, :source => :user
validates :user_id, :presence => true
end
