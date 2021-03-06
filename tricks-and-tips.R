
#Correlation Example
#Using ggplot2 library The following are three different approaches to plot a diagam on its two 
#different columns carat and price. which gives us the same out put

ggplot(data = dia) + geom_point(aes(x = carat, y = price))
ggplot(data = dia, aes(x = carat, y =price)) + geom_point()
ggplot(data = dia) + geom_point() +  aes(x = carat, y =price)
 
 
#Linear Regression Example

#Following code will give us a only the plot on the table mpg on the columns displ and hwl
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + ylim(10, 45) +
  geom_point()

#Following code will give us the same as alongwith its Linear Regression
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + ylim(10, 45) +
  geom_point() +  geom_smooth(method = "lm", se = false)

#Following code will do the almost simmilar t above, but it will give us  the root-mean-square
#distance between the predicted values and response values 
fit <- lm(mpg ~ wt, mtcars)
ggplot(data = mtcars, mapping = aes(x = wt, y = mpg)) +
  geom_point() + geom_smooth(method = "lm", se = FALSE) +
  geom_segment(data = cbind(mtcars, pred=predict(fit, mtcars)), aes(yend = pred, xend = wt), color = "red")


#Using geom_line we can create our own line to check if our prediction fits the changes
ggplot(mtcars) + geom_point(aes(x = wt, y = mpg)) +
geom_line(aes(x = wt, y = -5.344 * wt + 37.285), color = "red")