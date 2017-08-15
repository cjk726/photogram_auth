class Photo < ApplicationRecord
    belongs_to :user   # :required => false
    has_many :comments
    has_many :likes
    has_many :fans, :through => :likes, :source => :user   # need to have one-to-manies done first (as above and in other models)
    
    validates :user_id, :presence => true
    
end
