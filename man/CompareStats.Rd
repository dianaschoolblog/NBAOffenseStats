\name{Compare Stats Function}
\alias{Compare Stats Function}
\title{Compare Stats Function}
\description{
This function compares the selected stats between two players and returns the player with the higher specified stat.
}
\author{Diana May}
\example{
 compare_player_stats(nbastats, "3P%", players = c("LeBron James", "Joel Embiid"))
}
## The function is currently defined as
function (x)
{compare_player_stats <- function(data = nba_stats, stat, players) {
  selected_players <- data[data$NAME %in% players, c("NAME", stat)]
  if (nrow(selected_players) == 0) {
    stop("No matching players found in the dataset.")
  }
  best_player <- selected_players[which.max(selected_players[[stat]]), ]
  return(best_player)
}
}
  }
}
