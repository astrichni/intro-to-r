library(tidyverse)

plot <- ggplot(mpg, aes(x = cty, y = hwy, color = class)) +
	geom_point(alpha = 0.8, size = 2.5) +
	geom_smooth(se = FALSE, linewidth = 0.9, color = "#2C3E50") +
	scale_color_brewer(palette = "Set2") +
	labs(
		title = "City and highway fuel economy in the `mpg` dataset",
		subtitle = "Cars that do better in the city usually do better on the highway too, but vehicle class still shapes the pattern.",
		caption = "Source: ggplot2's built-in `mpg` dataset from the tidyverse package.",
		x = "City miles per gallon",
		y = "Highway miles per gallon",
		color = "Vehicle class"
	) +
	theme_minimal(base_size = 13) +
	theme(
		plot.title = element_text(face = "bold"),
		plot.subtitle = element_text(color = "#4D4D4D"),
		panel.grid.minor = element_blank(),
		legend.position = "bottom"
	)

ggsave("script-3.png", plot = plot, width = 8, height = 6, dpi = 300)
