#' Function to remove some html tags function from the supreme court data
#' @param court A data frame containing details about supreme court cases.
#' @param col_of_interest A column of the `court` data frame that you wish to clean.
#' @importFrom dplyr %>%
#' @export
#' @return A data frame
#' @details
#' Some column cells have some unnecessary characters in the beginning or end of
#'
#' @examples
#' clean_text(court_data,
#'            "href")

clean_text <- function(court, col_of_interest){
  if (col_of_interest %in% c(names(court))){
    column <- court |>
      dplyr::select({{col_of_interest}})

    col_of_interest = c()
    for (x in 1:nrow(column)) {
      col_of_interest[x] = gsub("[<></>\n]",' ', column[x, ])
      col_of_interest[x] = gsub(" p ",' ', col_of_interest[x])
      col_of_interest[x] = stringr::str_trim(col_of_interest[x], "both")
    }

    result <- data.frame(col_of_interest)
  } else {
    warning("The returned data frame is empty. This is likely because the `col_of_interest` argument supplied does not match any name of the columns in the original data.")
    result <- data.frame(tibble::as_tibble(list(col_of_interest = numeric(0))))
  }
  result
}


