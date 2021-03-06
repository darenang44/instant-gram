class PicsController < ApplicationController
	before_action :find_pic, only: [:show, :edit, :update, :destroy, :upvote]

  # this will allow any one who isn't signed in to only see the index and show action/pages(restricts user behavior)
  before_action :authenticate_user!, except: [:index, :show]

  def index
  	@pics = Pic.all.order('created_at DESC')
  end

  def show
  end

  def new
  	# @pic = Pic.new

  	# @pic will only be from the current user
  	@pic = current_user.pics.build
  end

  def create
  	# @pic = Pic.new(pic_params)

  	@pic = current_user.pics.build(pic_params)

  	if @pic.save
  		redirect_to @pic, notice: 'Pic was posted'
  	else
  		render 'new'
  	end
  end

  def edit
  end

  def update
  	if @pic.update(pic_params)
  		redirect_to @pic, notice: 'Pic was updated'
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@pic.destroy
  	redirect_to root_path
  end

  def upvote
    # we have the @pic by the before_action 
    # the @pic can only be upvoted by the current user
    @pic.upvote_by current_user
    # we want to redirect back to out show page
    redirect_to :back
  end

  private
  def pic_params
  	params.require(:pic).permit(:title, :description, :image);
  end

  def find_pic
    @pic = Pic.find(params[:id])
  end
  
end
