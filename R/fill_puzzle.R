

#' Title
#'
#' @param puz
#'
#' @return
#' @export
#'
#' @examples
fill_puzzle <- function(puz,random=F) {

  puz <- dplyr::arrange(puz,desc(Length),No)

  for (i in 1:nrow(puz)) {
    #print(paste(puz[i,]$x,puz[i,]$y,puz[i,]$DA,puz[i,]$Length,random,sep=","))
    #print_puzzle(puz)
    if (is.na(puz[i,]$Word)) {
      cat(paste0("== ",puz[i,]$No, puz[i,]$AD," - "))
      puz[i,]$Word <- pick_a_word(puzzle_to_grid(puz),puz[i,]$x,puz[i,]$y,puz[i,]$DA,puz[i,]$Length,random=random)
    }
  }

  if (sum(is.na(puz$Word)) > 0)
    message(paste(" *Failed to fill",sum(is.na(puz$Word)),"words"))

  return(puz)
}
