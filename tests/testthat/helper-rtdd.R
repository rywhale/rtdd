# Skip if no internet connection
skip_if_net_down <- function(){
  if(has_internet()){
    return()
  }
  testthat::skip("No internet")
}
