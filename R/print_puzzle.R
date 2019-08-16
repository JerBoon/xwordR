

#' Title
#'
#' @param words
#' @param compact
#'
#' @return
#' @export
#'
#' @examples
print_puzzle <- function(words,compact=T, blank.char="#") {

  grid <- puzzle_to_grid(words, blank.char = blank.char)

  print_grid(grid,compact)
}
