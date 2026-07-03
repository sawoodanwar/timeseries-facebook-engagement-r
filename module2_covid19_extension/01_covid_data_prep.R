# ============================================================
# Module 2 | Script 01: COVID-19 Data Preparation
# Project: Time-Series Analysis of Facebook Post Engagement
# Author: Sawood Anwar
# ============================================================

library(tidyverse)
library(lubridate)

# Study period: March 24, 2020 - March 31, 2022
# Outlets: Times of India, The Hindu, Indian Express, Hindustan Times

# ---- Load and Filter ----
# df <- read_csv("data/facebook_posts.csv") %>%
#   filter(post_date >= as.Date("2020-03-24"),
#          post_date <= as.Date("2022-03-31"))

# ---- Define Pandemic Phases ----
# df <- df %>%
#   mutate(phase = case_when(
#     post_date <= as.Date("2020-06-30") ~ "Wave 1 / First Lockdown",
#     post_date <= as.Date("2021-02-28") ~ "Inter-wave Period",
#     post_date <= as.Date("2021-06-30") ~ "Wave 2 (Delta)",
#     post_date <= as.Date("2022-03-31") ~ "Wave 3 (Omicron) / Recovery",
#     TRUE ~ "Other"
#   ))

cat("Module 2 | COVID-19 data preparation script ready.\n")
