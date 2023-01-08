#' Function to remove some html tags from the Supreme court data
#' @param court A data frame containing details about Supreme court cases.
#' @param col_of_interest A column of the `court` data frame that you wish to clean.
#' @import dplyr
#' @export
#' @return A data frame
#' @details
#' This function cleans `col_of_interest` by removing "<p>", "</p>" and "\\n” from
#' the latter column cells.
#' @examples
#' clean_text(court_data,
#'            "href")

clean_text <- function(court, col_of_interest){
  if (col_of_interest %in% c(names(court))){
    column <- court |>
      dplyr::select({{col_of_interest}})

    clean_col_of_interest = c()
    for (x in 1:length(column[[1]])) {
      clean_col_of_interest[x] = gsub("[<></>\n]",' ', column[x, ])
      clean_col_of_interest[x] = gsub(" p ",' ', clean_col_of_interest[x])
      clean_col_of_interest[x] = stringr::str_trim(clean_col_of_interest[x], "both")
    }

    result <- data.frame(clean_col_of_interest)
  } else {
    warning("The returned data frame is empty. This is likely because the
            `col_of_interest` argument supplied does not match any name of the
            columns in the original data.")
    result <- data.frame(tibble::as_tibble(list(col_of_interest = numeric(0))))
  }
  result
}

