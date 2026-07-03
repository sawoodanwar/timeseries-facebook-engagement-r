# ============================================================
# Module 2 | Script 04: Cross-Outlet Comparison
# Project: Time-Series Analysis of Facebook Post Engagement
# Author: Sawood Anwar
# ============================================================

library(tidyverse)
library(ggplot2)

# Outlets: Times of India, The Hindu, Indian Express, Hindustan Times

# ---- Weekly Engagement per Outlet ----
# outlet_weekly <- df %>%
#   mutate(week = floor_date(post_date, "week")) %>%
#   group_by(week, page_name) %>%
#   summarise(total_reactions = sum(likes + love + haha + wow + sad + angry, na.rm = TRUE))

# ---- Plot ----
# ggplot(outlet_weekly, aes(x = week, y = total_reactions, color = page_name)) +
#   geom_line(linewidth = 0.7) +
#   labs(title = "Weekly Engagement by News Outlet (COVID-19 Period)",
#        x = "Week", y = "Total Reactions", color = "Outlet") +
#   theme_minimal()

cat("Module 2 | Outlet comparison script ready.\n")
