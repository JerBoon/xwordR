

#' Title
#'
#' @param words
#' @param compact
#'
#' @return
#' @export
#'
#' @examples
print_puzzle <- function(words,compact=T) {

  grid <- puzzle_to_grid(words)

  print_grid(grid,compact)
}
