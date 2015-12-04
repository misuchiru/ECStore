class Carousel < ActiveRecord::Base
	has_one :carousel_photo

	accepts_nested_attributes_for :carousel_photo
end
