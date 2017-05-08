class MovieController < ApplicationController
  def index4
  end
  def write4
    new_bestmovie = Bestmovie.new
    new_bestmovie.title = params[:text4]
    new_bestmovie.content = params[:content4]
    new_bestmovie.save
    
    redirect_to "/list4"
  end
  def list4
    @everybestmovie = Bestmovie.all
  end
  def destroy4
    @one_bestmovie = Bestmovie.find(params[:bestmovie_id])
    @one_bestmovie.destroy
    redirect_to "/list4"
  end
  def update_view4
     @one_bestmovie = Bestmovie.find(params[:bestmovie_id])
  end
  def update4
     @one_bestmovie = Bestmovie.find(params[:bestmovie_id])
     @one_bestmovie.content = params[:content4]
     @one_bestmovie.save
     redirect_to "/list4"
  end
end
