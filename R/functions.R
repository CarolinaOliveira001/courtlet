#' Function to remove some html tags function from the supreme court data
#' @param court_data A data frame containing details about supreme court cases.
#' @param col_of_interest A column of the `court_data` data frame that you wish to clean.
#' @importFrom dplyr %>%
#' @export
#' @return A data frame
#' @details
#' Some column cells have some unnecessary characters in the beginning or end of
#'
#' @examples
#' clean_text(court_data,
#'            href)

clean_text <- function(court_data, col_of_interest){
  column <- court_data |>
    dplyr::select({{col_of_interest}})

  col_of_interest = c()
  for (x in 1:nrow(column)) {
    col_of_interest[x] = gsub("[<p></p>\n]",'', column[x, ])
    col_of_interest[x] = stringr::str_trim(col_of_interest[x], "both")
  }

  data.frame(col_of_interest)
}



