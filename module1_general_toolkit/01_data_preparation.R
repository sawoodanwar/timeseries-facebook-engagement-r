# ============================================================
# Module 1 | Script 01: Data Preparation
# Project: Time-Series Analysis of Facebook Post Engagement
# Author: Sawood Anwar
# ============================================================

library(tidyverse)
library(lubridate)

# ---- Load Data ----
# df <- read_csv("data/facebook_posts.csv")

# ---- Parse Dates ----
# df <- df %>% mutate(post_date = as.Date(post_date))

# ---- Aggregate Daily Engagement ----
# daily <- df %>%
#   group_by(post_date) %>%
#   summarise(
#     total_likes    = sum(likes, na.rm = TRUE),
#     total_comments = sum(comments, na.rm = TRUE),
#     total_shares   = sum(shares, na.rm = TRUE),
#     total_reactions = sum(likes + love + haha + wow + sad + angry, na.rm = TRUE),
#     n_posts        = n()
#   ) %>%
#   arrange(post_date)

cat("Module 1 | Data preparation script ready. Load your CSV and uncomment.\n")
