###


robustrao::RaoStirling(c(5.5,0,2),
                       matrix(c(0,1,1,0,1,1,0,1,1),
                              ncol = 3)
                        ) -> RS

RaoStirling

RS * 2

abdiv::simpson(c(5.5,0,2,0,0))

ineq::Gini(c(5.5,0,2), corr = T)

1/(1 - RS)

1 - DescTools::Gini(c(1,2,3),
                    unbiased = F)


DescTools::Gini(c(10,10,0))
abdiv::simpson(c(10,10,10))

abdiv::simpson(c(10,10,10))
