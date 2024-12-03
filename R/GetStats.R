get_nbastats <- function(data = nba_stats, players) {
  selected_players <- data[data$NAME %in% players, c("NAME", "PPG", "3P%", "2P%", "FT%")]
  if (nrow(selected_players) == 0) {
    warning("No matching players found in the dataset.")
    return(data.frame())
  }
  return(selected_players)
}
