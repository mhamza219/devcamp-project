class PortfoliosController < ApplicationController
layout "portfolio"
access all: [:show, :index, :angular], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all

	def index
		@portfolio_items = Portfolio.all
	end

	def angular
		@angular_portfolio_items = Portfolio.angular
	end

	def new
		@portfolio_item = Portfolio.new
		# 3.times {@portfolio_item.technologies.build}
	end

	def create
    	@portfolio_item = Portfolio.new(portfolio_params)

	    respond_to do |format|
	      if @portfolio_item.save
	        format.html { redirect_to portfolios_path, notice: "Portfolio item is live now" }
	        
	      else
	        format.html { render :new, status: :unprocessable_entity }
	       
	      end
	    end
    end
    def show 
	@portfolio_item = Portfolio.find(params[:id])
	
	end

	def edit
		@portfolio_item = Portfolio.find(params[:id])
		
	end


	def update
			@portfolio_item = Portfolio.find(params[:id])
	    respond_to do |format|
	      if @portfolio_item.update(portfolio_params)
	        format.html { redirect_to portfolios_path, notice: "The record is successfully updated." }
	   
	      else
	        format.html { render :edit, status: :unprocessable_entity }
	       
	      end
	    end
    end

 	
def destroy
   @portfolio_item = Portfolio.find(params[:id])
   @portfolio_item.destroy
   redirect_to '/portfolios'
end

private

def portfolio_params
	params.require(:portfolio).permit(:title, 
									  :subtitle,
									  :body,
									  :main_image,
									  :thumb_image,
									  :images,
									  technologies_attributes: [:name]
									  )
end
end
