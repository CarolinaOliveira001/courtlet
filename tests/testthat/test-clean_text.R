test_that("wrong column", {

  returned_value <- clean_text(court_data, facts) %>%
    as.data.frame()

  expected_value <- readr::read_csv("test_data_facts.csv") %>%
    as.data.frame()

  expect_equal(returned_value, expected_value)

})
