NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

library(tidyverse)

ems <- NEI %>% subset(fips=='24510') %>% group_by(year) %>% summarise(Total_Emissions=sum(Emissions))

png('plot2.png',width = 480,height = 480)
plot(ems$year,ems$Total_Emissions, type = 'l',col='red',xlab = 'Year',
     ylab = 'Total Emissions', main = 'Total Emissions of PM2.5 in Maryland')
grid()
dev.off()
