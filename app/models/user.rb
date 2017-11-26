class User < ActiveRecord::Base
  has_many :posts
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts
  has_many :video_posts
  has_many :comments
  has_many :teams, through: :joins  
  
  belongs_to :posts
  has_many :likes
  has_many :liked_posts, through: :likes, source: :post
end

def is_like?(post) 
  Like.find_by(user_id: self.id, post_id: post.id).present? 
  end

