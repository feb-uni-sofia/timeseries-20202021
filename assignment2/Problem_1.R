library(xts)
# a) Read data
gdp <- read.csv('https://raw.githubusercontent.com/feb-uni-sofia/timeseries-20202021/main/data/gdp_bg_qrt_2000-2017.csv')

# b) Create time series object
timeIndex <- as.yearqtr(gdp$Index, format = '%YQ%q')
gdpSeries <- xts(gdp$GDP, order.by = timeIndex)
