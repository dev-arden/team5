class AnimalController < ApplicationController
  def index2
  end
  def write2
    new_animalinfo = Animalinfo.new
    new_animalinfo.title = params[:text2]
    new_animalinfo.content = params[:content2]
    new_animalinfo.save
    
    redirect_to "/list2"
  end
  def list2
    @everyanimalinfo = Animalinfo.all
  end
  def destroy2
    @one_animalinfo = Animalinfo.find(params[:animalinfo_id])
    @one_animalinfo.destroy
    redirect_to "/list2"
  end
  def update_view2
    @one_animalinfo = Animalinfo.find(params[:animalinfo_id])
  end
  def update2
    @one_animalinfo = Animalinfo.find(params[:animalinfo_id])
    @one_animalinfo.title = params[:text2]
    @one_animalinfo.content = params[:content]
    @one_animalinfo.save
    redirect_to "/list2"
  end
end
