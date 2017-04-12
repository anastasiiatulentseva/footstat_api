module Stats
  class PlayersController < ApplicationController
    def show
      @player = Player.find(params[:id])
    end
  end
end
