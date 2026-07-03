# ============================================================
# Module 1 | Script 02: Rolling Statistics
# Project: Time-Series Analysis of Facebook Post Engagement
# Author: Sawood Anwar
# ============================================================

library(tidyverse)
library(zoo)

# ---- Rolling Mean and SD ----
# daily <- daily %>%
#   mutate(
#     rolling_mean_7  = rollmean(total_reactions, k = 7, fill = NA, align = "right"),
#     rolling_sd_7    = rollapply(total_reactions, width = 7, FUN = sd, fill = NA, align = "right"),
#     rolling_mean_14 = rollmean(total_reactions, k = 14, fill = NA, align = "right")
#   )

cat("Module 1 | Rolling statistics script ready.\n")
