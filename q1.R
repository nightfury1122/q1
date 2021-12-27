
# using the package gtrendsR to access google trends in R

result<-gtrends(c("Machine Learning"))

# separating the trends we get by ountry and storing them in a result1 object

result1<-result$interest_by_country


# separating the top ten countries

result2<-head(result1,10)

# plotting a barchart for the hits according to the country

barplot(result2$hits,names= result2$location, xlab = "geoname", legend.text ="Machine Learning", col = " blue")

# now separating results according to time and storing in a variable result3

result3<- result$interest_over_time

# plotting a line graph using ggplot2

result4 <- ggplot() + geom_line(aes(y = hits, x = date), data = result3) +scale_y_continuous(breaks = seq(30,100,10))

# displaying the plot
result4
