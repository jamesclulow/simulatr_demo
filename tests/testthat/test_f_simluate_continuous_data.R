
test_that("For invalid input arguments 'get_simulated_two_arm_means' throws meaningful exceptions", { # nolint
    expect_error(
        get_simulated_two_arm_means(),
        'argument "n1" is missing, with no default'
    )

    # TODO implement tests for all arguments
})

test_that("With defined seed 'get_simulated_two_arm_means' returns reproducible results", { # nolint
    # TODO implement tests
})

test_that("With undefined seed 'get_simulated_two_arm_means' returns valid results", { # nolint
    # TODO implement tests
})

test_that("'get_simulated_two_arm_means' result can be printed", {
    # TODO implement tests
})
