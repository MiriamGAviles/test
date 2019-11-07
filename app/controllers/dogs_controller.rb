class DogsController < ApplicationController
	

  def index
  	@dogs = Dog.all
  end

  def show
  	 @dog = Dog.find(params[:id])
  	  
  end

  def new 
  	@dog=Dog.new
  end


  def create
  	@dog=Dog.new(dogs_params)

  	
      if @dog.save
      	#render :show
        redirect_to dog_path(@dog[:id]), notice: 'dog was successfully created.' 
        
      else
         render :new 
    end
  end

  def edit
  end

  def update
  	if @dog.update(dogs_params)
  		redirect_to dog_path(@dog[:id])
  	else
  		render :edit
  	end

  end
  private
  def dogs_params
  params.require(:dogs).permit(:name, :motto)
  end
  
end
