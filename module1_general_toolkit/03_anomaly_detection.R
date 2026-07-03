# ============================================================
# Module 1 | Script 03: Anomaly Detection
# Project: Time-Series Analysis of Facebook Post Engagement
# Author: Sawood Anwar
# ============================================================

library(tidyverse)

# ---- Z-score Method ----
# daily <- daily %>%
#   mutate(
#     z_score   = (total_reactions - mean(total_reactions, na.rm = TRUE)) /
#                  sd(total_reactions, na.rm = TRUE),
#     anomaly_z = abs(z_score) > 2
#   )

# ---- Percentage Change Method ----
# daily <- daily %>%
#   mutate(
#     pct_change  = (total_reactions - lag(total_reactions)) / lag(total_reactions) * 100,
#     anomaly_pct = abs(pct_change) > 50
#   )

# ---- Combined Flag ----
# daily <- daily %>%
#   mutate(anomaly_any = anomaly_z | anomaly_pct)

# ---- Summary ----
# cat("Anomalous days detected:", sum(daily$anomaly_any, na.rm = TRUE), "\n")

cat("Module 1 | Anomaly detection script ready.\n")
