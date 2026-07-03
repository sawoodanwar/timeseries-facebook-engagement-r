# Time-Series Analysis of Facebook Post Engagement in R

[![Language: R](https://img.shields.io/badge/Language-R-276DC3?style=flat&logo=r&logoColor=white)](https://www.r-project.org/)
[![Method: Time-Series](https://img.shields.io/badge/Method-Time--Series%20Analysis-orange?style=flat)]()
[![Platform: Facebook](https://img.shields.io/badge/Platform-Facebook-1877F2?style=flat&logo=facebook&logoColor=white)]()
[![Topic: Social Media](https://img.shields.io/badge/Domain-Social%20Media%20%7C%20Health%20Misinfo-informational?style=flat)]()
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Overview

This repository provides a **comprehensive R-based time-series analysis framework** for studying Facebook post engagement. It is organized into three integrated modules:

| Module | Focus |
|---|---|
| 🧩 **Module 1: General Toolkit** | Reusable time-series functions for any social media engagement data |
| 🦠 **Module 2: COVID-19 Extension** | Applied to Facebook news engagement during the COVID-19 pandemic in India (2020–2022) |
| 🚨 **Module 3: Misinfo Spike Detection** | Anomaly detection for health misinformation spikes on Facebook |

This repository builds directly on methods developed in the **PhD thesis** of Sawood Anwar (University of Urbino Carlo Bo) and extends them into a reusable, well-documented public toolkit.

> **Related Projects:**
> - 🦠 [facebook-reactions-covid19-india](https://github.com/sawoodanwar/facebook-reactions-covid19-india) — PhD thesis project
> - 🧠 [stm-social-media-r](https://github.com/sawoodanwar/stm-social-media-r) — STM topic modeling toolkit
> - 💬 [sentiment-lexicon-comparison](https://github.com/sawoodanwar/sentiment-lexicon-comparison) — Lexicon-based sentiment toolkit
> - 📊 [meta-content-analysis](https://github.com/sawoodanwar/meta-content-analysis) — Meta platform content analysis
> - 🗳️ [reddit-political-misinfo-coding](https://github.com/sawoodanwar/reddit-political-misinfo-coding) — Reddit manual coding project

---

## Repository Structure

```
timeseries-facebook-engagement-r/
├── module1_general_toolkit/
│   ├── 01_data_preparation.R       # Load, clean, aggregate engagement data
│   ├── 02_rolling_statistics.R     # Rolling mean, rolling SD, moving averages
│   ├── 03_anomaly_detection.R      # Z-score and pct-change anomaly detection
│   └── 04_visualization.R          # Time-series plots and anomaly overlays
├── module2_covid19_extension/
│   ├── 01_covid_data_prep.R        # COVID-19 Facebook post preprocessing
│   ├── 02_reaction_timeseries.R    # Reaction-specific trends (Like, Love, Angry, Sad)
│   ├── 03_pandemic_phases.R        # Segmented analysis by pandemic phase
│   └── 04_outlet_comparison.R      # Cross-outlet engagement comparison over time
├── module3_misinfo_spikes/
│   ├── 01_spike_detection.R        # Detect engagement spikes in misinfo content
│   ├── 02_event_annotation.R       # Annotate spikes with real-world events
│   └── 03_spike_visualization.R    # Spike timeline and heatmap plots
├── data/
│   └── README.md                   # Data structure and collection notes
├── output/
│   ├── figures/                    # All exported plots
│   └── tables/                     # Summary stats and anomaly tables
├── .gitignore
├── README.md
└── LICENSE
```

---

## Module 1: General Toolkit

A platform-agnostic, reusable framework for time-series analysis of social media engagement metrics.

**Key methods:**
- Rolling mean and rolling standard deviation
- Percentage change detection between consecutive periods
- Z-score standardization for cross-metric comparison
- Anomaly flagging with configurable thresholds
- Time-series decomposition (trend, seasonality, residual)

**Works with:** Facebook, Instagram, Twitter/X, Reddit, or any CSV with date + engagement columns.

---

## Module 2: COVID-19 Facebook Extension

Applied analysis of Facebook engagement patterns across COVID-19 news coverage in India (March 2020 – March 2022).

**Key analyses:**
- Reaction-specific time trends (Like, Love, Haha, Wow, Sad, Angry)
- Segmented analysis by pandemic phase (lockdowns, waves, vaccine rollout)
- Cross-outlet comparison: Times of India, The Hindu, Indian Express, Hindustan Times
- Identification of **48 anomalous engagement days** from the PhD thesis findings

---

## Module 3: Health Misinformation Spike Detection

Detects and annotates unusual engagement spikes in health misinformation content on Facebook.

**Key analyses:**
- Spike detection using Z-score and rolling deviation thresholds
- Real-world event annotation (policy announcements, viral stories, outbreaks)
- Spike heatmaps across content categories
- Comparison of spike frequency between factual and misinformation-coded posts

---

## Requirements

All analysis runs in **R**. Install required packages:

```r
install.packages(c(
  "tidyverse",
  "lubridate",
  "zoo",
  "tseries",
  "forecast",
  "anomalize",
  "ggplot2",
  "patchwork",
  "scales"
))
```

---

## Quick Start

```bash
git clone https://github.com/sawoodanwar/timeseries-facebook-engagement-r.git
cd timeseries-facebook-engagement-r
```

Then in R:
```r
# Module 1: General toolkit
source("module1_general_toolkit/01_data_preparation.R")
source("module1_general_toolkit/02_rolling_statistics.R")
source("module1_general_toolkit/03_anomaly_detection.R")
source("module1_general_toolkit/04_visualization.R")

# Module 2: COVID-19 extension
source("module2_covid19_extension/01_covid_data_prep.R")

# Module 3: Spike detection
source("module3_misinfo_spikes/01_spike_detection.R")
```

---

## Key Concepts

| Concept | Description |
|---|---|
| **Rolling Mean** | Smooths short-term fluctuations to reveal underlying trends |
| **Z-score** | Measures how many standard deviations a data point is from the mean |
| **Percentage Change** | Captures relative shifts between consecutive time points |
| **Anomaly Day** | A day where engagement deviates significantly from expected baseline |
| **Spike** | A sudden, sharp increase in engagement often tied to external events |

---

## Author

**Sawood Anwar**
PhD in Humanities (Text and Communication Sciences) — defended 22 September 2025
University of Urbino Carlo Bo, Italy
Supervisor: Prof. Fabio Giglietto | Co-Supervisor: Prof. Giovanni Boccia Artieri

- 🔗 [GitHub](https://github.com/sawoodanwar)
- 💼 [LinkedIn](https://www.linkedin.com/in/sawood-anwar/)
- 🎓 [Google Scholar](https://scholar.google.com/citations?hl=en&user=GgsMu3sAAAAJ)

---

## Citation

```bibtex
@phdthesis{anwar2025facebook,
  title     = {"Facebook Reactions" as Emotional Indicators: A Multi-Method Approach
               to Analyzing User Engagement with COVID-19 News on Indian Media Platforms},
  author    = {Anwar, Sawood},
  year      = {2025},
  school    = {University of Urbino Carlo Bo},
  type      = {PhD Thesis},
  note      = {Supervisor: Prof. Fabio Giglietto; Co-Supervisor: Prof. Giovanni Boccia Artieri}
}
```

---

## License

This project is licensed under the [MIT License](LICENSE).

---

*Keywords: Time-Series Analysis, Facebook Engagement, Anomaly Detection, Z-score, Rolling Statistics, COVID-19, Health Misinformation, Social Media, R, Computational Communication, Crisis Communication*
