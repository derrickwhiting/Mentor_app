class ListsController < ApplicationController
  before_action :find_list, only: [:show, :edit, :update, :destroy]
  def index
    @lists = List.all 
  end

  def show

  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def edit
    
  end

  def update
    if @list.update(list_params)
      redirect_to list_path(@list)
    else
      render :edit
    end
  end

  def destroy
    if @list.destroy
      redirect_to list_path
    else
      render :show
    end
    
  end

  private

  def list_params
    params.require(:list).permit(:name, :description, :user_id, :number_of_likes)
  end

  def find_list
    @list = List.find(params[:id])
  end
end