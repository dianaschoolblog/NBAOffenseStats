\name{Get NBA Stats function}
\alias{Get NBA Stats function}
\title{Get NBA Stats}
\description{
This function retreives the PPG, 3P%, 2P%, and FT% of specified players. It will return a message if no matching player is found in the dataset.
}
\usage{
Get NBA Stats function(x)
}
\author{Diana May}
\example{get_nbastats(nbastats, "Luka Doncic")
}

## The function is currently defined as
function (x)
{get_nbastats <- function(data = nbastats, players) {
  selected_players <- data[data$NAME %in% players, c("NAME", "PPG", "3P", "2P", "FT")]
  if (nrow(selected_players) == 0) {
    warning("No matching players found in the dataset.")
    return(data.frame())
  }
  return(selected_players)
}
  }
}
