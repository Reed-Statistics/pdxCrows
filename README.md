
# pdxCrows

<!-- badges: start -->
<!-- badges: end -->

The goal of pdxCrows is to share crow population data from downtown Portland from 2019 onwards. This data was collected by Gary Granger with a total of 228 observations. 

More information about the project can be found [here](https://pdxcrowroost.com/)


## Example

This is a basic example which shows you how to view the spatial distribution of crow counts in downtown Portland:

``` r
library(pdxCrows)
library(ggplot2)

ggplot(crows, aes(x=long, y=lat, size=count)) +
  geom_point(color = "midnightblue", alpha = 0.6) + 
  labs(y="Latitude",
       x="Longtitude",
       title="Spatial Density of Crows in PDX",
       fill="Number of Crows") + 
  scale_size(name="Number of Crows") +
  coord_fixed() + 
  scale_x_continuous(labels=NULL) +
  scale_y_continuous(labels=NULL) +
  theme_light() 


```

