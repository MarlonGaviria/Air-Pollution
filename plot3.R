NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

library(tidyverse)
library(ggplot2)

ems <- NEI %>% group_by(year,type) %>% summarise(total=sum(Emissions))
png('plot3.png',width = 480,height = 480)
ems %>% ggplot(aes(x=year,y=total, col=type)) + geom_line() +
        labs(x = "year", y="Emmisions",
             title="Emissions for year in Baltimore City")
dev.off()
