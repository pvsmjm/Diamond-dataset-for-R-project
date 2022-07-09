#install ggplot2 if not already installed
install.packages('ggplot2')
#load ggplot2
library(ggplot2)
data(diamonds)
head(diamonds)
summary(diamonds)
dim(diamonds)
names(diamonds)
ggplot(data=diamonds, aes(x=price)) +
  geom_histogram(fill="steelblue", color="black") +
  ggtitle("Histogram of Price Values")
ggplot(data=diamonds, aes(x=carat, y=price, color=cut)) + 
  geom_point()
ggplot(data=diamonds, aes(x=cut, y=price)) + 
  geom_boxplot(fill="steelblue")
str(diamonds)
View(diamonds)
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut))
ggplot(data = diamonds) + 
  stat_summary(
    mapping = aes(x = cut, y = price),
    fun.ymin = min,
    fun.ymax = max,
    fun.y = median
  )
diamond.plot <- ggplot(data=diamonds, aes(x=carat, y=price))
diamond.plot + geom_point()

diamond.plot <- ggplot(data=diamonds, aes(x=carat, y=price, colour = clarity))
diamond.plot + geom_point()
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, colour = cut))
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = cut))
#ggplot(data = diamonds) + 
  #geom_bar(mapping = aes(x = cut, fill = clarity))

#ggplot(data = diamonds, mapping = aes(x = cut, fill = clarity)) + 
 # geom_bar(alpha = 1/5, position = "identity")

#ggplot(data = diamonds, mapping = aes(x = cut, colour = clarity)) + 
 # geom_bar(fill = NA, position = "identity")

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity), position = "dodge")

