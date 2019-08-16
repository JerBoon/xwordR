

#' Title
#'
#' @param grid
#' @param x
#' @param y
#' @param DA
#' @param Length
#'
#' @return
#' @export
#'
#' @examples
pick_a_word <- function(grid, x, y, DA, Length,random=F) {

  pattern <- paste(grid[y:(y + (DA=="D")*(Length - 1)),
                        x:(x + (DA=="A")*(Length - 1))], collapse="")
  pattern <- gsub(" ",".",pattern)
  pattern <- tolower(pattern)
  pattern <- paste0("^",pattern,"$")
  #print(c(" ",pattern))

  candidates <- lexicon::grady_augmented[grep(pattern,lexicon::grady_augmented)]
  candidates <- sample(candidates)

  if (length(candidates) == 0)
    return (NA)

  if (random)
    return(sample(candidates,1))

  print(candidates)
  n <- readinteger()
  return (candidates[n])

}


readinteger <- function()
{
  n <- readline(prompt="Enter an integer: ")
  return(as.integer(n))
}
