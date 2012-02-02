class UsersController < ApplicationController

  def index
    @users = User.where(:available =>true)
  end

  def create
    if User.create(params[:user])
      redirect_to :action => :index
    else
      redirect_to :back 
    end
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])    
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:notice] = 'User updated.'
      redirect_to :action => :index
    else
      flash[:error] = 'Couldn\'t update the user. Please check the errors.'
      redirect_to :back
    end    
  end

end
