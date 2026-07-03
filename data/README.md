# Data Notes

Raw data files are **not included** in this repository.

## Expected Data Format

Your input CSV should contain at minimum:

| Column | Type | Description |
|---|---|---|
| `post_id` | character | Unique post identifier |
| `platform` | character | e.g., Facebook |
| `page_name` | character | Source page/outlet |
| `post_date` | date | Format: YYYY-MM-DD |
| `likes` | numeric | Like count |
| `love` | numeric | Love reaction count |
| `haha` | numeric | Haha reaction count |
| `wow` | numeric | Wow reaction count |
| `sad` | numeric | Sad reaction count |
| `angry` | numeric | Angry reaction count |
| `comments` | numeric | Comment count |
| `shares` | numeric | Share count |
| `post_text` | character | Full text of the post |
| `misinfo_label` | character | Optional: coded misinformation label |

## Data Sources

- **Facebook (COVID-19 module):** CrowdTangle or Meta Content Library (academic access required)
- **General toolkit:** Compatible with any platform CSV matching the above schema
- **Misinformation module:** Requires a `misinfo_label` column from manual or automated coding

> ⚠️ Do not commit raw data files. The `.gitignore` is configured to exclude all `.csv`, `.xlsx`, and `.rds` files.
