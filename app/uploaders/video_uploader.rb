# encoding: utf-8

class VideoUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  include CarrierWave::Video

  process encode_video: [:mp4, callbacks: { after_transcode: :set_success } ]
  
  def store_dir
    "uploads/"
  end
    
    
end

class Video
  mount_uploader :file, VideoUploader

  def set_success(format, opts)
    self.success = true
  end

end
