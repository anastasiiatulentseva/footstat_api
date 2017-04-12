class Match < ApplicationRecord
  
  belongs_to :team1, class_name: Team.name
  belongs_to :team2, class_name: Team.name

  def duration_formatted
    mins, secs = duration.divmod(60)
    "#{mins}:#{secs}"
  end

end
