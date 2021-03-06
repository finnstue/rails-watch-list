class ListsController < ApplicationController
  before_action :set_list, only: [:show]

  def index
    @lists = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  # POST /lists
  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to @list, notice: 'List was successfully created.'
    else
      render :new
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end
