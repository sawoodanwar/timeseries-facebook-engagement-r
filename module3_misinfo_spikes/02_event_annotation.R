# ============================================================
# Module 3 | Script 02: Event Annotation
# Project: Time-Series Analysis of Facebook Post Engagement
# Author: Sawood Anwar
# ============================================================

library(tidyverse)
library(ggplot2)

# ---- Define Key Events ----
# events <- tibble(
#   event_date  = as.Date(c("2020-03-24", "2021-04-01", "2021-05-01", "2022-01-01")),
#   event_label = c("National Lockdown", "Second Wave Surge", "Oxygen Crisis", "Omicron Peak")
# )

# ---- Annotate Spike Plot ----
# ggplot(misinfo_daily, aes(x = post_date, y = total_reactions)) +
#   geom_line(color = "firebrick", linewidth = 0.7) +
#   geom_point(data = filter(misinfo_daily, spike),
#              aes(x = post_date, y = total_reactions), color = "darkred", size = 3) +
#   geom_vline(data = events, aes(xintercept = event_date),
#              linetype = "dashed", color = "gray40") +
#   geom_text(data = events, aes(x = event_date, y = max(misinfo_daily$total_reactions, na.rm=TRUE),
#             label = event_label), angle = 90, vjust = -0.3, size = 3, color = "gray30") +
#   labs(title = "Health Misinformation Engagement Spikes with Event Annotations",
#        x = "Date", y = "Total Reactions") +
#   theme_minimal()

cat("Module 3 | Event annotation script ready.\n")
