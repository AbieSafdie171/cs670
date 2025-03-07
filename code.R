install.packages("readr")
library(readr)

cast_data <- read_csv("cast.csv")		# makes data frame
bottle_data <- read_csv("bottle.csv")		# makes data frame







install.packages("ggplot2")       # For visualization
install.packages("dplyr")         # For data wrangling
install.packages("lubridate")     # For handling dates

library(ggplot2)
library(dplyr)
library(lubridate)


library(OpenStreetMap)

california_basemap <- openmap(upperLeft = c(42, -126), lowerRight = c(30, -114), type = "osm")

plot(california_basemap)


library(ggplot2)
library(maps)

# Get California map data
usa_map <- map_data("state")
california_map <- subset(usa_map, region == "california")

# Plot California with cast locations
ggplot() +
  geom_polygon(data = california_map, aes(x = long, y = lat, group = group), 
               fill = "gray80", color = "black") +
  geom_point(data = locations, aes(x = Lon_Dec, y = Lat_Dec), 
             color = "blue", alpha = 0.5, size = 1) +
  coord_fixed(1.3) +
  xlim(-126, -114) +  # Adjust zoom
  ylim(30, 42) +
  labs(title = "CALCOFI Cast Locations Along the California Coast",
       x = "Longitude", 
       y = "Latitude") +
  theme_minimal()
