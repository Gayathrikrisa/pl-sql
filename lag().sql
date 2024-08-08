SELECT *,
  lag(revenue, 1) OVER (
    PARTITION BY year
    ORDER BY quarter DESC
  ) next_quarter_revenue
FROM tax_revenue;