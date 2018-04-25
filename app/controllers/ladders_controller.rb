class LaddersController < ApplicationController
    def new
        @ladder = Ladder.new
    end
    def create 
        @ladder = Ladder.new(ladder_params)
        
        if @ladder.save 
            redirect_to @ladder
        else
            render 'new'
        end
    end
    def show
        @ladder = Ladder.find(params[:id])
        @rosters = Roster.all
    end
    def index
        @ladders = Ladder.all
    end
    def edit
        @ladder = Ladder.find(params[:id])
    end
    def update
       @ladder = Ladder.find(params[:id]) 
        if @ladder.update(ladder_params)
           redirect_to ladders_path
        else 
            render 'edit'
        end
    end
    def destroy
        @ladder = Ladder.find(params[:id])
        @ladder.destroy
        
        redirect_to ladders_path
    end
private 
    def ladder_params
        params.require(:ladder).permit(:name)
    end
end
