class Admin::CarouselsController < AdminController
	def index
		@carousels = Carousel.all
	end
	def new
		@carousel = Carousel.new
	end
	def create
		@carousel = Carousel.new(carousel_params)
		if @carousel.save
			redirect_to admin_carousels_path
		else
			render :new
		end
	end
	def edit
		@carousel = Carousel.find(params[:id])
	end
	def update
		@carousel = Carousel.find(params[:id])
		if @carousel.update(carousel_params)
			redirect_to admin_carousels_path
		else
			render :edit
		end
	end
	private
	def carousel_params
		params.require(:carousel).permit(:title, :description)
	end
end
