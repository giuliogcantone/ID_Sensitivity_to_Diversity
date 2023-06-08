###

trueD <- function() {}


robustrao::RaoStirling(matrix(rep(c(5,2,2),10),
                              nrow = 3),
                       matrix(c(1,0,0,0,1,0,0,0,1),
                              ncol = 3)) -> RS

1/(1 - RS)

