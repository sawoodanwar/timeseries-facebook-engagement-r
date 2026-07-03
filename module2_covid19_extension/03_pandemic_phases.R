# ============================================================
# Module 2 | Script 03: Pandemic Phase Analysis
# Project: Time-Series Analysis of Facebook Post Engagement
# Author: Sawood Anwar
# ============================================================

library(tidyverse)
library(ggplot2)

# ---- Engagement by Phase ----
# phase_summary <- df %>%
#   group_by(phase) %>%
#   summarise(
#     mean_reactions = mean(likes + love + haha + wow + sad + angry, na.rm = TRUE),
#     mean_comments  = mean(comments, na.rm = TRUE),
#     n_posts        = n()
#   )

# ---- Boxplot by Phase ----
# ggplot(df, aes(x = phase, y = likes + angry + sad, fill = phase)) +
#   geom_boxplot(outlier.alpha = 0.3) +
#   labs(title = "Engagement Distribution by Pandemic Phase",
#        x = "Phase", y = "Total Reactions") +
#   theme_minimal() +
#   theme(legend.position = "none", axis.text.x = element_text(angle = 30, hjust = 1))

cat("Module 2 | Pandemic phases analysis script ready.\n")
