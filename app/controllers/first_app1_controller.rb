class FirstApp1Controller < ApplicationController
	def index
		@firsts=First.all
		
	end
	
	def create
		@first=First.new(:firstname=>params[:first][:firstname], :lastname=>params[:first][:lastname], :designation=>params[:first][:designation], :origin=>params[:first][:origin])
		if @first.valid?
		@first.save
		redirect_to first_app1_path(@first)
	else
		render 'new'
	end
end

	def new
		@first=First.new
end
def show
    @first=First.find(params[:id])
	end
end
