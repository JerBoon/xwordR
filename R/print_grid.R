
print_grid <- function(grid,compact=T) {

  nrows <- nrow(grid)
  ncols <- ncol(grid)

  if (compact) {
    for (i in 1:nrows)
      print(paste(grid[i,],sep="",collapse=" "))
  } else {
    for (i in 1:nrows) {
      print(paste(rep("+",ncols+1),collapse="-"))
      print(paste0("|",paste(grid[i,],sep="",collapse="|"),"|"))
    }
    print(paste(rep("+",ncols+1),collapse="-"))
  }
}
