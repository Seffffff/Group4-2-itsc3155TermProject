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
    
    def edit
        @player = Player.find(params[:id])
    end
    
    def update
        @player = Player.find(params[:id])
        if @player.update(player_params)
            redirect_to @player
        else
            render 'edit'
        end
    end
    
    def destroy
        @player = Player.find(params[:id])
        @player.destroy
        redirect_to players_path
    end
end

private
    def player_params
        params.require(:player).permit(:name, :teacher, :grade)
    end
    