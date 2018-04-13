class RostersController < ApplicationController
    def new
        @roster = Roster.new
    end
    def create 
        @roster = Roster.new(roster_params)
        
        if @roster.save 
            redirect_to @roster
        else
            render 'new'
        end
    end
    def show
        @roster = Roster.find(params[:id])
    end
    def index
        @rosters = Roster.all
    end
    def edit
        @roster = Roster.find(params[:id])
    end
    def update
       @roster = Roster.find(params[:id]) 
        if @roster.update(roster_params)
           redirect_to @roster
        else 
            render 'edit'
        end
    end
    def destroy
        @roster = Roster.find(params[:id])
        @roster.destroy
        
        redirect_to rosters_path
    end
private 
    def roster_params
        params.require(:roster).permit(:rosterName)
    end
end
