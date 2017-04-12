class MatchesController < ApplicationController
  def index
    @matches = Match.all.order(:played_on) # TODO: pagination
  end
end
