class Nolyjin < ActiveRecord::Base
  attr_accessible :content
  
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 100 }
  validates :user_id, presence: true
  
  
  default_scope order: 'nolyjins.created_at DESC'
end
