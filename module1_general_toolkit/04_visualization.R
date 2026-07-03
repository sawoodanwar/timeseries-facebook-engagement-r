# ============================================================
# Module 1 | Script 04: Visualization
# Project: Time-Series Analysis of Facebook Post Engagement
# Author: Sawood Anwar
# ============================================================

library(ggplot2)
library(tidyverse)
library(scales)

# ---- Time-Series Plot with Anomaly Overlay ----
# ggplot(daily, aes(x = post_date, y = total_reactions)) +
#   geom_line(color = "steelblue", linewidth = 0.7) +
#   geom_line(aes(y = rolling_mean_7), color = "orange", linewidth = 1, linetype = "dashed") +
#   geom_point(data = filter(daily, anomaly_any), aes(x = post_date, y = total_reactions),
#              color = "red", size = 2.5) +
#   labs(
#     title = "Daily Facebook Engagement with Anomalous Days Highlighted",
#     x = "Date", y = "Total Reactions"
#   ) +
#   scale_x_date(date_breaks = "1 month", date_labels = "%b %Y") +
#   theme_minimal() +
#   theme(axis.text.x = element_text(angle = 45, hjust = 1))

# ggsave("output/figures/engagement_timeseries.png", width = 14, height = 6, dpi = 300)

cat("Module 1 | Visualization script ready.\n")
