
puzzle_to_grid <- function(words) {

  df <- words

  ncols <- max(df$x + (df$DA=="A")*(df$Length - 1))
  nrows <- max(df$y + (df$DA=="D")*(df$Length - 1))

  grid <- matrix("#", nrows,ncols)

  for (i in 1:nrow(df)) {

    for (j in 1:df[i,]$Length) {

      grid[df[i,]$y + (df[i,]$DA=="D")*(j - 1),
           df[i,]$x + (df[i,]$DA=="A")*(j - 1)] <-
        (if (is.na(df[i,]$Word))  " "
         else substr(df[i,]$Word,j,j)
        )

    }
  }

  return(grid)
}
