
#' Title
#'
#' @param nrow
#' @param ncol
#' @param symmetry
#'
#' @return
#' @export
#'
#' @ImportFrom dplyr %>%
#'
#' @examples
#'
init_puzzle <- function(nrow=15,ncol=15, symmetry=2) {

  grid <- matrix(as.character(NA), nrow,ncol)

  df <- readr::read_csv("DA,x,y,Length
                 A,1,1,8
                 A,10,1,6
                 A,1,3,8
                 A,10,3,6
                 A,1,13,6
                 A,8,13,8
                 A,1,15,6
                 A,8,15,8
                 D,1,1,8")

  df$Word <- NA
  df$No <- dplyr::group_indices(df,y,x)
  df <- dplyr::arrange(df,DA, No)
  return(df)
}
