# Counts the number of odd integers in an integer vector
oddcount <- function(x) {
    k <- 0
    for (n in x) {
        if (n %% 2 == 1)
            k <- k + 1
    }
    
    return(k)
}
