# ============================================================
# Module 2 | Script 02: Reaction-Specific Time Series
# Project: Time-Series Analysis of Facebook Post Engagement
# Author: Sawood Anwar
# ============================================================

library(tidyverse)
library(lubridate)
library(ggplot2)

# ---- Daily Reactions by Type ----
# daily_reactions <- df %>%
#   group_by(post_date) %>%
#   summarise(
#     Like  = sum(likes,   na.rm = TRUE),
#     Love  = sum(love,    na.rm = TRUE),
#     Haha  = sum(haha,    na.rm = TRUE),
#     Wow   = sum(wow,     na.rm = TRUE),
#     Sad   = sum(sad,     na.rm = TRUE),
#     Angry = sum(angry,   na.rm = TRUE)
#   ) %>%
#   pivot_longer(-post_date, names_to = "reaction", values_to = "count")

# ---- Plot All Reactions Over Time ----
# ggplot(daily_reactions, aes(x = post_date, y = count, color = reaction)) +
#   geom_line(linewidth = 0.6, alpha = 0.8) +
#   facet_wrap(~reaction, scales = "free_y") +
#   labs(title = "Facebook Reaction Trends During COVID-19 (India 2020-2022)",
#        x = "Date", y = "Daily Count") +
#   theme_minimal()

cat("Module 2 | Reaction time-series script ready.\n")
