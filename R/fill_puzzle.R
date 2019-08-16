

#' Title
#'
#' @param puz
#'
#' @return
#' @export
#'
#' @examples
fill_puzzle <- function(puz,random=F) {

  puz <- dplyr::arrange(puz,desc(Length))

  for (i in 1:nrow(puz)) {
    #print(paste(puz[i,]$x,puz[i,]$y,puz[i,]$DA,puz[i,]$Length,random,sep=","))
    #print_puzzle(puz)
    puz[i,]$Word <- pick_a_word(puzzle_to_grid(puz),puz[i,]$x,puz[i,]$y,puz[i,]$DA,puz[i,]$Length,random=random)
  }
  return(puz)
}
