module Stats
  class TeamsController < ApplicationController
    def show
      @team = Team.find(params[:id])
    end
  end
end
