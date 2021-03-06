class PlayersController < ApplicationController
    def index
        @players = Player.all
    end
    
    def show
        @player = Player.find(params[:id])
    end
    
    def new
        @player = Player.new
    end
    
    def create
        @roster = Roster.find(params[:roster_id])
        @player = @roster.players.create(player_params)
        redirect_to roster_path(@roster)
    end
    def edit2 
        @roster = Roster.find(params[:roster_id])
        @player = @roster.players.find(params[:player_id])

    end
    def edit
        @roster = Roster.find(params[:roster_id])
        @player = @roster.players.find(params[:id])
    end
    
    def update
         @roster = Roster.find(params[:roster_id])
        @player = @roster.players.find(params[:id])
        if @player.update(player_params)
        redirect_to @roster
        else
            render 'edit'
        end
    end
    def update2
        @ladder = Ladder.find_by_id(3)
         @roster = Roster.find(params[:roster_id])
        @player = @roster.players.find(params[:player_id])
        if @player.update(player_params)
        redirect_to ladders_path
        else
            render 'edit'
        end
    end
    
    def destroy
        @roster = Roster.find(params[:roster_id])
        @player = @roster.players.find(params[:id])
        @player.destroy
        redirect_to roster_path(@roster)
    end
end

private
    def player_params
        params.require(:player).permit(:name, :teacher, :grade, :rank, :wins, :losses)
end