class Videopost < ActiveRecord::Base
    belongs_to :user
    validates :video_title, presence: { message: "제목써라 임마" }
end
