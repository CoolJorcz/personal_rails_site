class PagesController < ApplicationController
	before_action :set_page, only: [:show, :edit, :update, :destroy]

  def index
  	@pages = Page.find(1)
  end

  def about
    @page = Page.find(2)
  end

  def contact
  end

  def create
  	@page = Page.new(page_params)
  	@page.save
  	redirect_to action: :show, id: @page.id
  end

  def new
  	@page = Page.new
  end

  def portfolio
  end
  
  def show
  end

  private
  	# Use callbacks to share common setup or constraints between actions
  	def set_page
  		@page = Page.find(params[:id])
  	end

  	#Never trust parameters from outside, only allow the white list through.
  	def page_params
  		params.require(:page).permit(:title, :slug, :content)
  	end
end
