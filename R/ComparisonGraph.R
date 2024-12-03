plot_nbastats <- function(data = nba_stats, stat, players) {
  selected_players <- data[data$NAME %in% players, c("NAME", stat)]
  if (nrow(selected_players) == 0) {
    stop("No matching players found in the dataset.")
  }
  ggplot(selected_players, aes(x = NAME, y = !!sym(stat), fill = NAME)) +
    geom_bar(stat = "identity", position = "dodge") +
    theme_minimal() +
    labs(title = paste("Comparison of", stat, "Among Players"),
         x = "Player", y = stat) +
    scale_y_continuous(labels = scales::comma) +
    theme(legend.position = "none")
}
