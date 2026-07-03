# Time-Series Analysis of Facebook Post Engagement in R

[![Language: R](https://img.shields.io/badge/Language-R-276DC3?style=flat&logo=r&logoColor=white)]()
[![Method: Time-Series](https://img.shields.io/badge/Method-Time--Series%20Analysis-orange?style=flat)]()
[![Platform: Facebook](https://img.shields.io/badge/Platform-Facebook-1877F2?style=flat&logo=facebook&logoColor=white)]()
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Overview

This repository provides a **comprehensive R-based time-series analysis framework** for studying Facebook post engagement. It is organized into three integrated modules:

| Module | Focus |
|---|---|
| 🧩 **Module 1: General Toolkit** | Reusable time-series functions for any social media engagement data |
| 🦠 **Module 2: COVID-19 Extension** | Applied to Facebook news engagement during COVID-19 in India (2020–2022) |
| 🚨 **Module 3: Misinfo Spike Detection** | Anomaly detection for health misinformation spikes on Facebook |

---

## 🔗 Related Projects

| Repository | Description |
|---|---|
| 🦠 [facebook-reactions-covid19-india](https://github.com/sawoodanwar/facebook-reactions-covid19-india) | PhD thesis project |
| 🧠 [stm-social-media-r](https://github.com/sawoodanwar/stm-social-media-r) | STM topic modeling toolkit |
| 💬 [sentiment-lexicon-comparison](https://github.com/sawoodanwar/sentiment-lexicon-comparison) | AFINN, Bing, NRC lexicon comparison |
| 📊 [meta-content-analysis](https://github.com/sawoodanwar/meta-content-analysis) | Facebook & Instagram health misinformation analysis |
| 🗳️ [reddit-political-misinfo-coding](https://github.com/sawoodanwar/reddit-political-misinfo-coding) | Reddit political communication manual coding |
| 🔄 [cross-platform-engagement-analysis](https://github.com/sawoodanwar/cross-platform-engagement-analysis) | Unified cross-platform engagement framework |
| 🔴 [disinformation-detection-ml](https://github.com/sawoodanwar/disinformation-detection-ml) | ML classifier for disinformation detection |
| 🟣 [nlp-news-classification-r](https://github.com/sawoodanwar/nlp-news-classification-r) | Supervised NLP news classification |
| 🟢 [crowdtangle-meta-api-workflow](https://github.com/sawoodanwar/crowdtangle-meta-api-workflow) | Academic data collection pipeline |
| 📊 [survey-data-analysis-r](https://github.com/sawoodanwar/survey-data-analysis-r) | Survey data cleaning, Likert analysis & descriptives |
| 📝 [survey-scale-validation-r](https://github.com/sawoodanwar/survey-scale-validation-r) | Scale validation: EFA/CFA, Cronbach alpha, reliability |
| 🧪 [survey-experiment-analysis-r](https://github.com/sawoodanwar/survey-experiment-analysis-r) | Survey experiment & vignette study analysis |

---

## Module 1: General Toolkit

- Rolling mean, rolling SD (7-day and 14-day windows)
- Z-score and percentage-change anomaly detection
- Configurable anomaly thresholds and flagging
- Time-series decomposition (trend, seasonality, residual)

## Module 2: COVID-19 Facebook Extension

- Reaction-specific time trends (Like, Love, Haha, Wow, Sad, Angry)
- Segmented analysis by pandemic phase (Wave 1, Inter-wave, Delta, Omicron)
- Cross-outlet comparison: Times of India, The Hindu, Indian Express, Hindustan Times
- Identification of **48 anomalous engagement days**

## Module 3: Health Misinformation Spike Detection

- Spike detection via Z-score on misinformation-coded posts
- Real-world event annotation (lockdowns, waves, vaccine rollout)
- Weekly engagement heatmaps across years

---

## Repository Structure

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
├── README.md
└── LICENSE
```

## Requirements

```r
install.packages(c("tidyverse", "lubridate", "zoo", "tseries",
                   "forecast", "anomalize", "ggplot2", "patchwork", "scales"))
```

---

## Author

**Sawood Anwar** — PhD in Humanities (Text and Communication Sciences), University of Urbino Carlo Bo
Defended: 22 September 2025 | Supervisor: Prof. Fabio Giglietto

- 🔗 [GitHub](https://github.com/sawoodanwar) | 💼 [LinkedIn](https://www.linkedin.com/in/sawood-anwar/) | 🎓 [Google Scholar](https://scholar.google.com/citations?hl=en&user=GgsMu3sAAAAJ)

---

## License
MIT License. See [LICENSE](LICENSE).

*Keywords: Time-Series Analysis, Facebook Engagement, Anomaly Detection, Z-score, Rolling Statistics, COVID-19, Health Misinformation, R*
