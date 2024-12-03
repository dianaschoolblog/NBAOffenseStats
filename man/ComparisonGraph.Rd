
\name{Comparison Graph Function}
\alias{Comparison Graph Function}
\title{Comparison Graph Function}
\description{
This function generates a visualisation that compares selected playersand their PPG, 3P%, 2P%, and FT%.
}
\author{Diana May}
\example{
plot_nbastats(nbastats,"PPG",players = c("LeBron James", "Nikola Jokic"))
}
## The function is currently defined as
function (x)
{plot_nbastats <- function(data = nba_stats, stat, players) {
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
  }
}
