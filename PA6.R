# Chris O'Dell
# COP2073C Programming
# Programming Assignment 6
# October 5, 2026

# Square each element in a vector and add five.
sqAddFive <- function(x) {
  result <- try(x^2 + 5, silent = TRUE)

  # Return NAs when the vector contains a non-numeric element.
  if (class(result) == "try-error") {
    return(rep(NA, length(x)))
  } else {
    return(result)
  }
}

# Test the function with a numeric vector using an apply function.
numeric_vector <- 1:5
numeric_result <- lapply(list(numeric_vector), sqAddFive)[[1]]
cat("Numeric vector result:", numeric_result, "\n")

# Test the exception handler with a vector containing a string.
mixed_vector <- c(1, 2, "three", 4, 5)
mixed_result <- lapply(list(mixed_vector), sqAddFive)[[1]]
cat("Mixed vector result:", mixed_result, "\n")
