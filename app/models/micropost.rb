class Micropost < ActiveRecord::Base
  attr_accessible :content, :header, :space_id, :type, :location, :ups, :tags, :link
  belongs_to :user
  
  validates :header, presence: true
  validates :user_id, presence: true
  
  default_scope order: 'microposts.created_at DESC'
  
  private
  
    def signed_in
       @micropost = current_user.microposts.build
    end
  
end
