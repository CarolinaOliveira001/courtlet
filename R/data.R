#' U.S. Supreme Court data
#'
#' A tidy dataset of Supreme Court Case in United States of America.
#'
#' @format ## `who`
#' A data frame contains 21 columns and 3303 rows:
#' \describe{
#'   \item{id}{ID of the case}
#'   \item{docket}{ID of the case used by the legal system}
#'   \item{name}{Name of the court case}
#'   \item{href}{API URL of the court case}
#'   \item{term}{Year when the Court received the case}
#'   \item{first_party}{Name of the first party (petitioner)}
#'   \item{second_party}{Name of the second party (respondent)}
#'   \item{facts}{Facts of the court case}
#'   \item{facts_len}{Length of `facts` text}
#'   ...
#' }
"court_data"
