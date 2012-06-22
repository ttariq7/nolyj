class User < ActiveRecord::Base
  attr_accessible :first_name, :login_id, :status, :aboutme, :surname, :password, :password_confirmation, :Avatar, :remote_Avatar_url

  has_secure_password
 
  has_many :microposts, dependent: :destroy
  has_many :achievements, dependent: :destroy
  has_many :nolyjins, dependent: :destroy
  has_many :snolyjins, dependent: :destroy
  
  before_save { |user| user.login_id = login_id.downcase }
  before_save :create_remember_token
  
  validates :first_name, presence: true, length: { maximum: 20 } 
  validates :surname, presence: true, length: { maximum: 20 } 
  validates :login_id, presence: true, length: { maximum: 10 }, uniqueness: { case_sensitive: false } 
  validates :password, presence: true, length: { minimum:6 }
  validates :password_confirmation, presence: true
  
  
  private
  
    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
  
end
