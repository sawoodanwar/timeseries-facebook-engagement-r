# Time-Series Analysis of Facebook Post Engagement in R

[![Language: R](https://img.shields.io/badge/Language-R-276DC3?style=flat&logo=r&logoColor=white)](https://www.r-project.org/)
[![Method: Time-Series](https://img.shields.io/badge/Method-Time--Series%20Analysis-orange?style=flat)]()
[![Platform: Facebook](https://img.shields.io/badge/Platform-Facebook-1877F2?style=flat&logo=facebook&logoColor=white)]()
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A comprehensive **3-module R toolkit** for time-series analysis of social media engagement data. Developed as part of the doctoral thesis [facebook-reactions-covid19-india](https://github.com/sawoodanwar/facebook-reactions-covid19-india), the framework is designed to be reusable for any platform or engagement metric beyond Facebook.

---

## 🔗 Related Projects

| Repository | Description |
|---|---|
| 🦠 [facebook-reactions-covid19-india](https://github.com/sawoodanwar/facebook-reactions-covid19-india) | PhD thesis — applied time-series on COVID-19 news engagement |
| 🧠 [stm-social-media-r](https://github.com/sawoodanwar/stm-social-media-r) | STM topic modeling companion |
| 💬 [sentiment-lexicon-comparison](https://github.com/sawoodanwar/sentiment-lexicon-comparison) | Sentiment analysis companion |

---

## 📌 Module Overview

| Module | Focus | Key Techniques |
|---|---|---|
| 🧩 **Module 1: General Toolkit** | Reusable framework for any social media data | Rolling stats, Z-score, decomposition |
| 🦠 **Module 2: COVID-19 Extension** | Applied to Facebook news in India (2020–2022) | Reaction-specific trends, pandemic phases |
| 🚨 **Module 3: Misinfo Spike Detection** | Health misinformation anomaly detection | Spike annotation, event overlay, heatmaps |

---

## 🔬 Methodology

### Module 1 — General Time-Series Toolkit

#### Step 1: Aggregate to Daily Engagement

Raw post-level data is aggregated to daily totals per engagement metric:

```r
library(tidyverse)
library(lubridate)

daily <- df |>
  mutate(date = as_date(created_at)) |>
  group_by(date) |>
  summarise(
    total_likes   = sum(likes_count,   na.rm = TRUE),
    total_reactions = sum(reactions_count, na.rm = TRUE),
    total_comments = sum(comments_count, na.rm = TRUE),
    n_posts       = n()
  )
```

#### Step 2: Rolling Statistics (7-day and 14-day windows)

Smooth short-term noise and reveal underlying trends:

```r
library(zoo)

daily <- daily |>
  arrange(date) |>
  mutate(
    roll_mean_7  = rollmean(total_reactions, k = 7,  fill = NA, align = "right"),
    roll_sd_7    = rollapply(total_reactions, width = 7, FUN = sd, fill = NA, align = "right"),
    roll_mean_14 = rollmean(total_reactions, k = 14, fill = NA, align = "right")
  )
```

#### Step 3: Anomaly Detection (Z-score method)

Flag days where engagement deviates significantly from the rolling baseline:

```r
daily <- daily |>
  mutate(
    z_score  = (total_reactions - roll_mean_7) / roll_sd_7,
    is_anomaly = abs(z_score) > 2.5  # customizable threshold
  )

anomaly_days <- daily |> filter(is_anomaly)
nrow(anomaly_days)  # 48 anomalous days detected in PhD thesis dataset
```

#### Step 4: Percentage Change Detection

A complementary method for detecting sudden spikes relative to the previous period:

```r
daily <- daily |>
  mutate(
    pct_change = (total_reactions - lag(total_reactions)) / lag(total_reactions) * 100,
    is_spike   = pct_change > 50 | pct_change < -50
  )
```

#### Step 5: Time-Series Decomposition

Decompose the engagement series into trend, seasonal, and residual components:

```r
library(forecast)

ts_obj <- ts(daily$total_reactions, frequency = 7)  # weekly seasonality
decomp  <- stl(ts_obj, s.window = "periodic")
autoplot(decommp)
```

---

### Module 2 — COVID-19 Facebook Extension

Applies Module 1 to each of the six Facebook Reaction types (Like, Love, Haha, Wow, Sad, Angry) and segments results by pandemic phase:

| Phase | Date Range | Key Events |
|---|---|---|
| Wave 1 | Mar–Sep 2020 | First lockdown, early restrictions |
| Inter-wave | Oct 2020–Feb 2021 | Unlock phases, festive season |
| Delta Wave | Mar–Jun 2021 | Second wave, oxygen crisis |
| Omicron Wave | Dec 2021–Mar 2022 | Third wave, Omicron spread |

Reaction-specific trend plots are faceted by outlet (Times of India, The Hindu, Indian Express, Hindustan Times) to enable cross-outlet comparison.

---

### Module 3 — Health Misinformation Spike Detection

Applies the Z-score anomaly method specifically to misinformation-coded posts, with:
- **Event annotation**: spikes are overlaid with real-world events (lockdowns, vaccine rollout milestones, political announcements)
- **Weekly heatmaps**: `ggplot2` tile plots of engagement by week-of-year × day-of-week, revealing cyclical patterns
- **Outlet comparison**: spike frequency and magnitude compared across news sources

---

## 📂 Repository Structure

```
timeseries-facebook-engagement-r/
├── module1_general_toolkit/
│   ├── 01_data_preparation.R
│   ├── 02_rolling_statistics.R
│   ├── 03_anomaly_detection.R
│   └── 04_visualization.R
├── module2_covid19_extension/
│   ├── 01_covid_data_prep.R
│   ├── 02_reaction_timeseries.R
│   ├── 03_pandemic_phases.R
│   └── 04_outlet_comparison.R
├── module3_misinfo_spikes/
│   ├── 01_spike_detection.R
│   ├── 02_event_annotation.R
│   └── 03_spike_visualization.R
├── data/README.md
├── output/figures/
├── .gitignore
├── LICENSE
└── README.md
```

---

## 🚀 Usage

### Prerequisites

```r
install.packages(c(
  "tidyverse", "lubridate", "zoo",
  "tseries", "forecast", "anomalize",
  "ggplot2", "patchwork", "scales"
))
```

### Input Format

| Column | Type | Description |
|---|---|---|
| `post_id` | character | Unique post identifier |
| `created_at` | datetime | Post publication timestamp |
| `likes_count` | integer | Like reaction count |
| `love_count` | integer | Love reaction count |
| `haha_count` | integer | Haha reaction count |
| `wow_count` | integer | Wow reaction count |
| `sad_count` | integer | Sad reaction count |
| `angry_count` | integer | Angry reaction count |
| `comments_count` | integer | Comment count |
| `news_outlet` | character | Source name |

### Run Order

```r
# Module 1 (general — run first)
source("module1_general_toolkit/01_data_preparation.R")
source("module1_general_toolkit/02_rolling_statistics.R")
source("module1_general_toolkit/03_anomaly_detection.R")
source("module1_general_toolkit/04_visualization.R")

# Module 2 (COVID-19 specific)
source("module2_covid19_extension/01_covid_data_prep.R")
# ... etc.

# Module 3 (misinformation spikes)
source("module3_misinfo_spikes/01_spike_detection.R")
# ... etc.
```

---

## 📊 Expected Outputs

| Output | Description |
|---|---|
| `output/figures/rolling_trends.png` | 7-day and 14-day rolling mean overlays |
| `output/figures/anomaly_flags.png` | Time-series plot with anomalous days highlighted |
| `output/figures/decomposition.png` | Trend / seasonal / residual decomposition |
| `output/figures/reaction_facets.png` | Faceted plots per reaction type (Module 2) |
| `output/figures/pandemic_phases.png` | Engagement segmented by pandemic phase |
| `output/figures/weekly_heatmap.png` | Week × day-of-week engagement heatmap (Module 3) |
| `output/anomaly_days.csv` | Table of flagged anomalous dates with Z-scores |

---

## 📬 Author

**Sawood Anwar** — PhD in Humanities (Text and Communication Sciences)
University of Urbino Carlo Bo, Italy | Defended: 22 September 2025
Supervisor: Prof. Fabio Giglietto

[![GitHub](https://img.shields.io/badge/GitHub-sawoodanwar-181717?style=flat&logo=github)](https://github.com/sawoodanwar)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-sawood--anwar-0A66C2?style=flat&logo=linkedin)](https://www.linkedin.com/in/sawood-anwar/)
[![Google Scholar](https://img.shields.io/badge/Google%20Scholar-Sawood%20Anwar-4285F4?style=flat&logo=googlescholar&logoColor=white)](https://scholar.google.com/citations?user=Z2kACpkAAAAJ&hl=en)
[![ORCID](https://img.shields.io/badge/ORCID-0009--0000--2819--9179-A6CE39?style=flat&logo=orcid&logoColor=white)](https://orcid.org/0009-0000-2819-9179)

---

## 📝 License

MIT License. See [LICENSE](LICENSE).

---

*Keywords: Time-Series Analysis, Facebook Engagement, Anomaly Detection, Z-score, Rolling Statistics, COVID-19, Health Misinformation, Pandemic Phases, R, Computational Communication*
