class HomeController < ApplicationController
  def index
  end
  
  def data
        @one_post = Videopost.new
        @one_post.video_title = params[:title]
        #@one_post.user_id = User.find(params[:user_id])
        @one_post.video_content = params[:content]
        @one_post.hit = 0
        uploader = ChocoUploader.new
        file = params[:pic]
        uploader.store!(file)
        @one_post.save
        
        @one_post.image_url = uploader.url
        
        if @one_post.save
          redirect_to "/list"
        else
        render :text => @one_post.errors.messages[:title].first
        end
  end
  
  def update 
        @one_post = Videopost.find(params[:update_id])
  end
    
  def update_ok
        @one_post = Videopost.find(params[:id])
        @one_post.video_title = params[:title]
        #@one_post.user_id = User.find(params[:user_id])
        @one_post.video_content = params[:content]
        @one_post.save
        
        redirect_to "/list"
        
  end
    
  def delete
        @one_post = Videopost.find(params[:del_id])
        @one_post.destroy
        
        redirect_to "/list"
  end
    
  def detail
        @one_post = Videopost.find(params[:id])
        @one_post.hit +=1
        @one_post.save
  end
    
    # db에 있는 모든값을 출력해 주는 기능
  def list
        @all_post = Videopost.all
  end
  
  def upload
    file = params[:pic]
    
    uploader = VideoUploader.new
    uploader.store!(file)
    
    redirect_to "/list"
  end
  
end
