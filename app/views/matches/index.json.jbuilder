json.array! @matches do |match|
  json.id match.id
  json.team1 match.team1.name
  json.team2 match.team2.name
  json.played_on match.played_on
  json.score match.score
  json.stats_url stats_match_url(match)
end
