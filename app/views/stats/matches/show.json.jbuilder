json.(@match, :id, :score, :city, :referee, :tournament, :played_on)
json.team1 @match.team1.name
json.team2 @match.team2.name
json.red_cards @match.red_cards_count
json.yellow_cards @match.yellow_cards_count
json.substitutions @match.substitutions_count
json.duration @match.duration_formatted
