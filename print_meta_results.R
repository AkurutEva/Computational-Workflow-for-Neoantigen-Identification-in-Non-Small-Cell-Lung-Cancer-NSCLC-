# print_meta_results.R
library(tidyverse)
library(meta)

df <- read_csv("cleaned_nsclc_neoantigen_dataset.csv")

run_meta_print <- function(x, domain_name) {
  m <- metaprop(
    event = sum(x),
    n = length(x),
    method = "Inverse",
    sm = "PLOGIT",
    common = FALSE,
    random = TRUE,
    method.tau = "REML"
  )
  
  prop <- plogis(m$TE.random)
  lower <- plogis(m$lower.random)
  upper <- plogis(m$upper.random)
  
  cat(sprintf("%s:\n  Raw: %d/%d (%.1f%%)\n  Pooled: %.1f%% (95%% CI: %.1f%% - %.1f%%)\n", 
              domain_name, sum(x), length(x), sum(x)/length(x)*100,
              prop*100, lower*100, upper*100))
}

cat("=== Objective 1: Domain-Level Meta-Analysis (N = 22) ===\n")
run_meta_print(df$Sequencing, "Sequencing")
run_meta_print(df$Variant_Calling, "Variant Calling")
run_meta_print(df$Variant_Annotation, "Variant Annotation")
run_meta_print(df$HLA_Typing, "HLA Typing")
run_meta_print(df$Epitope_Prediction, "Epitope Prediction")
run_meta_print(df$Prediction_Threshold, "Prediction Threshold")
run_meta_print(df$Experimental_Validation, "Experimental Validation")
run_meta_print(df$Clonality_Estimation, "Clonality Estimation")

# Overall completeness across all 8 domains and 22 studies
total_events <- sum(df$Sequencing) + sum(df$Variant_Calling) + sum(df$Variant_Annotation) + 
                sum(df$HLA_Typing) + sum(df$Epitope_Prediction) + sum(df$Prediction_Threshold) + 
                sum(df$Experimental_Validation) + sum(df$Clonality_Estimation)
total_n <- nrow(df) * 8

cat(sprintf("\nOverall raw completeness: %d/%d (%.1f%%)\n", total_events, total_n, total_events/total_n*100))

# For prediction thresholds
cat("\n=== Objective 1: Selection Threshold Adoption ===\n")
df_thresh <- df %>%
  mutate(
    threshold_type = case_when(
      str_detect(tolower(binding_affinity_threshold), "ic50|affinity|nm") ~ "IC50/nM",
      str_detect(tolower(binding_affinity_threshold), "percentile|rank") ~ "Percentile Rank",
      TRUE ~ "Other"
    )
  )

run_meta_print(df_thresh$threshold_type == "IC50/nM", "IC50/nM threshold")
run_meta_print(df_thresh$threshold_type == "Percentile Rank", "Percentile Rank threshold")
run_meta_print(df_thresh$threshold_type == "Other", "Other threshold")
