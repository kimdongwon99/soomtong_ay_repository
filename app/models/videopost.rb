class Videopost < ActiveRecord::Base
    validates :video_title, presence: { message: "제목써라 임마" }
    belongs_to :user
    has_many :videocomments
    
end
