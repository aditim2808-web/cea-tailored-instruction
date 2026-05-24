# ============================================
# Cost-Effectiveness Analysis
# Tailored Instruction Interventions
# India and Kenya — J-PAL Evaluated Programmes
# ============================================

library(tidyverse)

# ============================================
# 1. BUILD DATASET
# ============================================

# Sources:
# Banerjee et al. (2007) — Balsakhi, India
# Banerjee et al. (2017) — TaRL/Pratham, India
# Duflo, Dupas & Kremer (2011) — Kenya tracking study

programmes <- tribble(
  ~programme,              ~country, ~delivery,           ~effect_sd, ~cost_usd_per_child,
  "Balsakhi (Pratham)",    "India",  "NGO-delivered",      0.28,       42,
  "TaRL — Govt integrated","India",  "Government-delivered",0.21,       10,
  "Kenya Tracking Study",  "Kenya",  "NGO-delivered",      0.16,       80
)

# ============================================
# 2. COST-EFFECTIVENESS METRIC
# ============================================

# Cost per 0.1 SD learning improvement
# Lower = more cost-effective

programmes <- programmes %>%
  mutate(
    cost_per_0.1sd = round(cost_usd_per_child / (effect_sd / 0.1), 2)
  )

print(programmes)

# ============================================
# 3. SENSITIVITY ANALYSIS
# ============================================

# What if costs are 20% higher than reported?
# What if effect sizes are 20% lower than reported?

programmes_sensitivity <- programmes %>%
  mutate(
    cost_high = cost_usd_per_child * 1.20,
    effect_low = effect_sd * 0.80,
    cost_per_0.1sd_pessimistic = round(cost_high / (effect_low / 0.1), 2)
  )

print(programmes_sensitivity %>% 
  select(programme, cost_per_0.1sd, cost_per_0.1sd_pessimistic))

# ============================================
# 4. VISUALISATION
# ============================================

# Bubble plot — effect size vs cost, bubble = cost-effectiveness
ggplot(programmes, aes(x = effect_sd, 
                        y = cost_usd_per_child,
                        color = delivery,
                        size = 1/cost_per_0.1sd,
                        label = programme)) +
  geom_point(alpha = 0.7) +
  geom_text(vjust = -1.2, size = 3.5, color = "black") +
  scale_size_continuous(range = c(5, 20), guide = "none") +
  labs(
    title = "Cost-Effectiveness of Tailored Instruction Programmes",
    subtitle = "Bubble size = cost-effectiveness (larger = more cost-effective)",
    x = "Effect Size (SD improvement in learning outcomes)",
    y = "Cost per Child (USD)",
    color = "Delivery Model"
  ) +
  theme_minimal() +
  theme(legend.position = "bottom")

ggsave("outputs/cea_plot.png", width = 9, height = 6)