# ============================================================
# Module 3 | Script 03: Spike Heatmap Visualization
# Project: Time-Series Analysis of Facebook Post Engagement
# Author: Sawood Anwar
# ============================================================

library(tidyverse)
library(ggplot2)
library(lubridate)

# ---- Prepare Heatmap Data ----
# misinfo_heat <- misinfo_daily %>%
#   mutate(
#     week  = isoweek(post_date),
#     year  = year(post_date),
#     month = month(post_date, label = TRUE)
#   )

# ---- Heatmap: Engagement Intensity by Week ----
# ggplot(misinfo_heat, aes(x = week, y = factor(year), fill = total_reactions)) +
#   geom_tile(color = "white") +
#   scale_fill_gradient(low = "lightyellow", high = "firebrick",
#                       name = "Reactions") +
#   labs(title = "Heatmap of Health Misinformation Engagement Spikes",
#        x = "Week of Year", y = "Year") +
#   theme_minimal()

# ggsave("output/figures/misinfo_spike_heatmap.png", width = 14, height = 5, dpi = 300)

cat("Module 3 | Spike heatmap visualization script ready.\n")
