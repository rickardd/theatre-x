class Avatar < ActiveRecord::Base

  belongs_to :show

  mount_uploader :image, AvatarUploader
  # validates_processing_of :image
  validate :image_size_validation


  private
    def image_size_validation
      errors[:image] << "should be less than 300KB" if image.size > 0.3.megabytes
    end


end
