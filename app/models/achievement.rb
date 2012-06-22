class Achievement < ActiveRecord::Base
  attr_accessible :content, :date
  
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 100 }
  validates :user_id, presence: true
  
  
  default_scope order: 'achievements.created_at DESC'
end
