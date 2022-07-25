test_that("uss_make_matches works", {

    # use the function
    italy <- uss_make_matches(engsoccerdata::italy, "Italy")

    expect_true(tibble::is_tibble(italy))
})
