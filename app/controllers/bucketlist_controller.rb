class BucketlistController < ApplicationController
  def index
  end
  def write
    new_bucketlist = Bucketlist.new
    new_bucketlist.title = params[:text0]
    new_bucketlist.content = params[:content]
    new_bucketlist.save
    
    redirect_to "/list"
  end
  def list
    @everybucket = Bucketlist.all
  end
  def destroy
    @one_bucketlist = Bucketlist.find(params[:bucketlist_id])
    @one_bucketlist.destroy
    redirect_to "/list"
  end
  def update_view
    @one_bucketlist = Bucketlist.find(params[:bucketlist_id])
  end
  def update
    @one_bucketlist = Bucketlist.find(params[:bucketlist_id])
    @one_bucketlist.content = params[:content]
    @one_bucketlist.save
    redirect_to "/list"
  end
end
