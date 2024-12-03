compare_player_stats <- function(data = nba_stats, stat, players) {
  selected_players <- data[data$NAME %in% players, c("NAME", stat)]
  if (nrow(selected_players) == 0) {
    stop("No matching players found in the dataset.")
  }
  best_player <- selected_players[which.max(selected_players[[stat]]), ]
  return(best_player)
}
