rain <- c(
    1,1,1,0,1,0,0,0,0,1,1,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,1,0,1,0,1,1,1,0,0,0,0,
    1,0,0,0,1,1,1,0,0,0,1,1,0,0,1,0,0,1,0,1,0,0,0,0,0,0,1,1,1,1,1,0,0,0,1,0,0
)

preda <- function(x, k) {
    n <- length(x)
    k2 <- k / 2
    
    # The vector pred will contain our predicted values
    pred <- vector(length = n - k)
    
    for (i in 1:(n - k)) {
        if (sum(x[i:(i + (k - 1))]) >= k2)
            pred[i] <- 1
        else
            pred[i] <- 0
    }
    
    return(mean(abs(pred - x[(k + 1):n])))
}