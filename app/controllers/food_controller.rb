class FoodController < ApplicationController
  def index3
  end
  def write3
    new_foodinfo = Foodinfo.new
    new_foodinfo.title = params[:text3]
    new_foodinfo.title2 = params[:text33]
    new_foodinfo.content = params[:content3]
    new_foodinfo.save
    
    redirect_to "/list3"
  end
  def list3
    @everyfoodinfo = Foodinfo.all
  end
  def destroy3
    @one_foodinfo = Foodinfo.find(params[:foodinfo_id])
    @one_foodinfo.destroy
    redirect_to "/list3"
  end
  def update_view3
     @one_foodinfo = Foodinfo.find(params[:foodinfo_id])
  end
  def update3
     @one_foodinfo = Foodinfo.find(params[:foodinfo_id])
     @one_foodinfo.content = params[:content3]
     @one_foodinfo.save
     redirect_to "/list3"
  end
end
