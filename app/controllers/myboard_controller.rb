class MyboardController < ApplicationController
  def index1
  end
  def write1
    new_mypost = Mypost.new
    new_mypost.title = params[:text1]
    new_mypost.writer = params[:text11]
    new_mypost.content = params[:content1]
    new_mypost.save
    
    redirect_to "/list1"
  end
  def list1
    @everymypost = Mypost.all
  end
  def destroy1
    @one_mypost = Mypost.find(params[:mypost_id])
    @one_mypost.destroy
    redirect_to "/list1"
  end
  def update_view1
    @one_mypost = Mypost.find(params[:mypost_id])
  end
  def update1
    @one_mypost = Mypost.find(params[:mypost_id])
    print (params[:content1])
    @one_mypost.content = params[:content1]
    
    @one_mypost.save
    redirect_to "/list1"
  end
  def reply_write
    reply = Reply.new
    reply.content = params[:content1]
    reply.mypost_id = params[:mypost_id]
    reply.save
    redirect_to "/list1"
  end
end

