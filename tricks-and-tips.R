
#Using ggplot2 library The following are three different approaches to plot a diagam on its two 
#different columns carat and price. which gives us the same out put

ggplot(data = dia) + geom_point(aes(x = carat, y = price))
ggplot(data = dia, aes(x = carat, y =price)) + geom_point()
ggplot(data = dia) + geom_point() +  aes(x = carat, y =price)
 