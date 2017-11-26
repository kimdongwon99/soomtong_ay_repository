class HomeController < ApplicationController
  def index
  end
  
  def many
      if user_signed_in?
        @email = current_user.name
      end
  end
  
  def data
        @one_post = Videopost.new
        @one_post.video_title = params[:title]
        @one_post.user_name = params[:name]
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
        @one_post = Videopost.find(params[:id])
  end
    
  def updateok
        @one_post = Videopost.find(params[:id])
        @one_post.video_title = params[:title]
        #@one_post.user_id = User.find(params[:user_id])
        @one_post.video_content = params[:content]
        @one_post.save
        
        redirect_to details_path
        
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
        if params[:query].nil?
      @all_post = Videopost.all
       else
       @all_post = Videopost.where("video_title LIKE ?", "%#{params[:query]}%")
        end

  end
  
  def upload
    file = params[:pic]
    
    uploader = VideoUploader.new
    uploader.store!(file)
    
    redirect_to "/list"
  end
  
  
  
  
end
