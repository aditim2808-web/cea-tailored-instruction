# Cost-Effectiveness Analysis: Tailored Instruction Interventions
### J-PAL Evaluated Programmes — India and Kenya

## Overview
A cost-effectiveness analysis comparing three J-PAL-evaluated tailored 
instruction programmes across India and Kenya. The analysis uses a cost 
per 0.1 SD learning improvement metric to evaluate value for money across 
programmes with different delivery models, effect sizes, and costs.

## Research Question
Which tailored instruction intervention delivers the greatest learning 
improvement per dollar spent — and does the most cost-effective programme 
produce the largest absolute learning gains?

## Programmes Compared

| Programme | Country | Delivery Model | Effect Size | Cost per Child |
|-----------|---------|----------------|-------------|----------------|
| Balsakhi (Pratham) | India | NGO-delivered | 0.28 SD | $42 |
| TaRL — Govt integrated | India | Government-delivered | 0.21 SD | $10 |
| Duflo, Dupas & Kremer Tracking | Kenya | NGO-delivered | 0.16 SD | $80 |

Sources: Banerjee et al. (2007), Banerjee et al. (2017),
Duflo, Dupas & Kremer (2011) — all J-PAL evaluated.

## Cost-Effectiveness Metric
Cost per 0.1 SD learning improvement:

cost_per_0.1sd = cost per child / (effect size / 0.1)

This metric allows direct comparison across programmes with
different effect sizes and costs.

## Key Findings
The government-integrated TaRL programme ($4.76 per 0.1 SD) is
approximately three times more cost-effective than Balsakhi ($15.00)
and approximately ten times more cost-effective than the Kenya
Tracking Study ($50.00) under baseline assumptions — despite not
producing the largest absolute learning gains.

This reframes the evaluation question from "what works?" to
"what works, at what cost, and who can deliver it?" — a distinction
that matters significantly for programme scale-up and government
adoption decisions.

## Sensitivity Analysis
Under pessimistic assumptions (costs 20% higher, effect sizes 20%
lower), the cost-effectiveness ranking remains unchanged:
- TaRL: $7.14 per 0.1 SD
- Balsakhi: $22.50 per 0.1 SD
- Kenya Tracking: $75.00 per 0.1 SD

The finding is robust to uncertainty in reported costs and effects.

## Comparability Considerations
The programmes compared operate in different country contexts, years,
and implementation environments. Effect sizes and costs are therefore
not perfectly equivalent across studies, and comparisons should be
interpreted as illustrative rather than definitive rankings. Cost
estimates drawn from published papers may not capture full system
costs — in particular, TaRL's government-integrated delivery cost
($10 per child) may understate true costs if government training,
supervision, and monitoring expenditures are excluded.

## Key Insight — Delivery Architecture Matters
The most cost-effective programme (TaRL) works by integrating into
existing government systems rather than building parallel delivery
infrastructure. A programme costing $10 per child delivered through
government systems is more likely to reach national scale than a $42
NGO-delivered programme, regardless of the absolute effect size
difference.

## Policy Implications
The findings suggest that moderate-effect, low-cost interventions
integrated into government systems may generate greater scalable
impact than higher-effect NGO-led programmes with substantially
higher delivery costs. Cost-effectiveness analysis can therefore
complement traditional impact evaluation when informing programme
scale-up decisions — shifting the question from whether a programme
works to whether it can work at scale, at acceptable cost, through
sustainable delivery systems.

## Limitations
1. Cost estimates drawn from published papers — actual programme
   costs vary by context, scale, and implementation quality
2. Effect sizes from specific RCT contexts — external validity
   to other geographies not guaranteed
3. Single outcome metric (test scores) — does not capture
   non-cognitive outcomes or long-term effects
4. Three programmes is a small comparison set — findings
   are illustrative rather than definitive
5. TaRL cost estimate may understate true government delivery costs

## Outputs
- outputs/cea_plot.png — bubble chart
- outputs/cea_results.csv — main CEA results
- outputs/cea_sensitivity.csv — sensitivity analysis

## Requirements
R 4.5+
Packages: tidyverse