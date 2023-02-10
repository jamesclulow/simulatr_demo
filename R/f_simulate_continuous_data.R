
#'
#' @title
#' Get Simulated Two Arm Means
#'
#' @description
#' Simulates and returns a normally distributed continuous dataset for two
#' groups.
#'
#' @param n1 a single integer value. The sample size of group 1.
#' @param n2 a single integer value. The sample size of group 2.
#' @param mean1 a single numerical value. The mean of group 1.
#' @param mean2 a single numerical value. The mean of group 2.
#' @param sd1 a single numerical value. The standard deviation of group 1.
#' @param sd2 a single numerical value. The standard deviation of group 2.
#'
#' @details
#' TODO describe
#'
#' @return a list with all arguments and results; the output is defined as a
#' class with name 'SimulationResult'.
#'
#' @examples
#' get_simulated_two_arm_means(n1 = 50, n2 = 50, mean1 = 5, mean2 = 7, sd1 = 3,
#'                         sd2 = 4, seed = 123)
#'
#' @export
#'
get_simulated_two_arm_means <- function(
        n1,
        n2,
        mean1,
        mean2,
        sd1,
        sd2,
        seed = NA_integer_) {

    # TODO use assertions to check all input arguments, see 'checkmate' package

    # specify seed
    if (!is.na(seed)) {
        set.seed(seed)
    }

    # TODO create normal distributed random data for the two groups

    # TODO save the fake data to a data frame in long format
    tbl_res <- data.frame()

    # define that the result list is a class with name 'SimulationResult'
    result <- structure(list(
      data = tbl_res,
      n1 = n1,
      n2 = n2,
      mean1 = mean1,
      mean2 = mean2,
      sd1 = sd1,
      sd2 = sd2
    ), class = "SimulationResult")

    return(result)
}

#'
#' @title
#' Print Simulation Result
#'
#' @description
#' Generic function to print a \code{SimulationResult} object.
#'
#' @param x a \code{SimulationResult} object to print.
#' @param ... further arguments passed to or from other methods.
#'
#' @examples
#' x <- get_simulated_two_arm_means(n1 = 50, n2 = 50, mean1 = 5, mean2 = 7,
#'                              sd1 = 3, sd2 = 4, seed = 123)
#' print(x)
#'
#' @export
#'
print.SimulationResult <- function(x, ...) {
    # TODO optimize the output format
    print(class(x))
}

#'
#' @title
#' Plot Simulation Result
#'
#' @description
#' Generic function to plot a \code{SimulationResult} object.
#'
#' @param x a \code{SimulationResult} object to plot.
#' @param ... not used
#' @param main an overall title for the plot.
#' @param xlab a title for the x axis.
#' @param ylab a title for the y axis.
#'
#' @details
#' Uses ggplot2 to create the plot.
#'
#' @return
#' A ggplot2 object.
#'
#' @examples
#' x <- get_simulated_two_arm_means(n1 = 50, n2 = 50, mean1 = 5, mean2 = 7,
#'                              sd1 = 3, sd2 = 4, seed = 123)
#' if (require(ggplot2)) plot(x)
#'
#' @importFrom rlang .data
#'
#' @export
#'
plot.SimulationResult <- function(
        x,
        ...,
        main = "Continuous Fake Data",
        xlab = "Group",
        ylab = "Simulated Values") {

    # TODO implement the plot function
  stop("not implemented yet")
}
