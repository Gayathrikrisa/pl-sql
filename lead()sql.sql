SELECT *,
  lead(revenue, 1,0) OVER (
    PARTITION BY year
    ORDER BY quarter DESC
  ) last_quarter_revenue
FROM tax_revenue;

