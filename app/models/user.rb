class User < ActiveRecord::Base
  has_many :posts
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts
  has_many :video_posts
  has_many :comments
  has_many :teams, through: :joins  
end
