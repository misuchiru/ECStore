class CarouselPhoto < ActiveRecord::Base
	belongs_to :carousel

	mount_uploader :image, ImageUploader
end
