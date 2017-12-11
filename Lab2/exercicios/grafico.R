attach(Bank)

library(ggplot2)

dispersao <- ggplot(Bank, aes(x=age, y=salbeg, color=sex))
dispersao + geom_point()


dispersao <- ggplot(Bank, aes(x=age, y=salbeg, color=sex))
dispersao + geom_point() + facet_wrap(~sex)