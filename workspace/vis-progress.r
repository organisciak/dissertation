library(ggplot2)
library(data.table)

# stats = read.csv("../logs/stats.csv", sep='\t')
stats = read.csv("stdin", sep='\t')
stats <- data.table(stats)
stats[,time:=as.POSIXct(time, origin='1970-01-01')]

ggplot(stats[name!='total'], aes(x=time, y=count, color=name)) +
  geom_line() + geom_line(data=stats[name=='total'], size=3) +
  scale_x_datetime() +
  theme_minimal()+ theme(legend.position="bottom")
#ggsave("progress.png")
