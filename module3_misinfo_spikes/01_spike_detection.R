# ============================================================
# Module 3 | Script 01: Health Misinformation Spike Detection
# Project: Time-Series Analysis of Facebook Post Engagement
# Author: Sawood Anwar
# ============================================================

library(tidyverse)
library(zoo)

# Requires a `misinfo_label` column (yes/no or category)

# ---- Filter Misinformation Posts ----
# misinfo <- df %>% filter(misinfo_label == "yes")

# ---- Daily Misinfo Engagement ----
# misinfo_daily <- misinfo %>%
#   group_by(post_date) %>%
#   summarise(total_reactions = sum(likes + love + haha + wow + sad + angry, na.rm = TRUE))

# ---- Spike Detection via Z-score ----
# misinfo_daily <- misinfo_daily %>%
#   mutate(
#     z_score = (total_reactions - mean(total_reactions, na.rm = TRUE)) /
#                sd(total_reactions, na.rm = TRUE),
#     spike   = z_score > 2
#   )

# cat("Misinformation spikes detected:", sum(misinfo_daily$spike, na.rm = TRUE), "\n")

cat("Module 3 | Spike detection script ready.\n")
