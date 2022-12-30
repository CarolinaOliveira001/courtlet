## code to prepare `DATASET` dataset goes here

df <- readr::read_csv("https://raw.githubusercontent.com/CarolinaOliveira001/SupremeCourtJudgementPrediction/main/allJustice.csv")

library(dplyr)

clean_data <- function(x){
  x <- x %>%
    janitor::clean_names()

  x[, colnames(x)[!colnames(x)%in% c("x1", "v1")]]
}

court_data <- clean_data(df)

usethis::use_data(court_data, overwrite = TRUE)

