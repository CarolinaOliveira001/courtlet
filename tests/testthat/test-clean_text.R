test_that("cleaning a column from the dataset", {

  returned_value <- clean_text(court_data, "facts") %>%
    as.data.frame()

  expected_value <- readr::read_csv("test_data_facts.csv", show_col_types = FALSE) %>%
    as.data.frame()

  expect_equal(returned_value, expected_value)

})

test_that("cleaning a column which is not in the dataset", {

  returned_value <- clean_text(court_data, "judge_name")  %>%
    as.data.frame()

  expected_value <- tibble::as_tibble(
    list("col_of_interest" = numeric(0))) %>%
    as.data.frame()


  expect_equal(returned_value, expected_value)

})

test_that("wrong commune name: warning is thrown", {

  expect_warning({clean_text(court_data, "judge_name")
  }, "This is likely")

})
