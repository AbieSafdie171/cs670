# Define bounding box for California coast
california_basemap <- openmap(upperLeft = c(42, -126), lowerRight = c(30, -114),
                              type = "osm")

# Convert to ggplot-compatible format
california_basemap <- autoplot(california_basemap)

# Plot with OpenStreetMap
california_basemap +
  geom_point(data = casts_df, aes(x = Lon_Dec, y = Lat_Dec), 
             color = "red", alpha = 0.5, size = 1) +
  labs(title = "CALCOFI Cast Locations Along the California Coast",
       x = "Longitude", 
       y = "Latitude") +
  theme_minimal()
