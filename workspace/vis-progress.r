library(ggplot2)
library(data.table)

# stats = read.csv("../logs/stats.csv", sep='\t')
stats = read.csv("stdin", sep='\t')
stats = data.table(stats)
stats[,time:=as.POSIXct(time, origin='1970-01-01')]
dates = as.numeric(unique(stats$time))
startdate = dates[1]
currentdate = tail(dates, 1)
wps = 12000/(1391212800 - startdate) # Words per second, for slope; 12k words by Feb 1
intercept = (wps * startdate)
goal = (wps * currentdate) - intercept # Today's goal
goal_line = geom_abline(intercept=-intercept, slope=wps)

ggplot(stats[name!='total'], aes(x=time, y=count, color=name)) +
  geom_line() + goal_line + ylim(0, goal) +
  # Add thicker "TOTAL" line
  geom_line(data=stats[name=='total'], size=3) +
  # Add date vertical lines
  geom_vline(xintercept=dates, linetype='dotted') +
  scale_x_datetime() +
  theme_minimal()+ theme(legend.position="bottom")
ggsave("progress.png",dpi=150, width=10, height=7)
