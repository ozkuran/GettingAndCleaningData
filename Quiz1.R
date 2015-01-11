data <- read.csv("getdata-data-ss06hid.csv", colClasses="character")
MoreThanMillion <- subset(data, data$VAL == 24)


library(XML)
xmlData <- xmlTreeParse("getdata-data-restaurants.xml", useInternal=T)
root <- xmlRoot(xmlData)
zips <- xpathSApply(xmlData, "//zipcode", xmlValue)
length(zips[zips == 21231])