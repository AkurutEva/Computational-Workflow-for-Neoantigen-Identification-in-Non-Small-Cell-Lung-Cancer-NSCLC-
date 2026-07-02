# Computational Workflows for Neoantigen Identification in Non-Small Cell Lung Cancer (NSCLC)

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](#license)
[![Research](https://img.shields.io/badge/Research-Scoping%20Review%20%2B%20Meta--analysis-blue.svg)]()

This repository contains the complete research resources accompanying the manuscript:

**Computational Workflows for Neoantigen Identification in Non-Small Cell Lung Cancer: A Scoping Review and Meta-analysis**

---

## Repository Overview

This repository serves as the official research companion for the manuscript:

**Computational Workflows for Neoantigen Identification in Non-Small Cell Lung Cancer: A Scoping Review and Meta-analysis**

It contains the complete datasets, analysis scripts, figures, supplementary materials, and interactive resources supporting both components of the study:

* **Scoping Review:** Comprehensive mapping of computational workflows for neoantigen identification in NSCLC, including workflow classification, reporting completeness assessments, evidence tables, and supplementary datasets.

* **Meta-analysis:** Complete clinical trial datasets, statistical analyses, forest plots, sensitivity analyses, and figure-generation scripts evaluating the immunogenicity and safety of personalized neoantigen vaccines developed from computationally predicted neoantigens.

The repository has been developed to promote transparency, reproducibility, and reuse of computational immuno-oncology research. Wherever possible, all analytical workflows, scripts, processed datasets, and visualization resources used in the manuscript have been made openly available to facilitate independent verification, benchmarking, and future methodological development.


---

# Repository Structure

# Repository Structure

```text
.
├── README.md
├── LICENSE
├── CITATION.cff
│
├── manuscript/
│   ├── Manuscript.pdf
│   ├── Supplementary_Materials.pdf
│   ├── PRISMA_Checklist.pdf
│   └── PRISMA-ScR_Checklist.pdf
│
├── scoping_review/
│   ├── Search_Strategy.pdf
│   ├── Screening_Log.xlsx
│   ├── Included_Studies.csv
│   ├── Data_Extraction.xlsx
│   ├── Workflow_Classification.xlsx
│   ├── Reporting_Completeness.xlsx
│   └── Evidence_Tables.xlsx
│
├── meta_analysis/
│   ├── Clinical_Trial_Dataset.csv
│   ├── Effect_Size_Data.csv
│   ├── Statistical_Outputs/
│   ├── Forest_Plots/
│   ├── Funnel_Plots/
│   ├── Sensitivity_Analysis/
│   └── Meta_Analysis_Report.pdf
│
├── scripts/
│   ├── Data_Cleaning/
│   ├── Scoping_Review/
│   ├── Meta_Analysis/
│   ├── Figure_Generation/
│   └── Sankey_Workflow/
│
├── figures/
│   ├── Figure1_PRISMA/
│   ├── Figure2_Upstream_Workflow/
│   ├── Figure3_Variant_Calling/
│   ├── Figure4_Midstream_Workflow/
│   ├── Figure5_Downstream_Workflow/
│   ├── Figure6_Methodological_Variability/
│   ├── Figure7_Meta_Analysis/
│   └── Supplementary_Figures/
│
├── workflow/
│   ├── sankey_pipeline.html
│   ├── workflow.json
│   └── workflow_documentation.md
│
└── docs/
    ├── Repository_Guide.md
    ├── Workflow_Framework.md
    ├── Analysis_Pipeline.md
    └── Reproducibility.md
```

```

---

# Study Objectives

This study aimed to:

* Characterize computational workflows used for neoantigen identification in NSCLC.
* Map workflow implementation across upstream genomic processing, midstream immunogenomic analysis, and downstream neoantigen prioritization and validation.
* Evaluate workflow variability and reporting completeness across computational workflow stages.
* Quantitatively synthesize published clinical trials of neoantigen vaccines.
* Develop an evidence-based framework to improve the reproducibility, transparency, and standardization of computational neoantigen identification.

---

# Computational Workflow Framework

The review organizes computational neoantigen discovery into three interconnected workflow stages:

## Upstream Genomic Processing

* Specimen selection
* High-throughput sequencing
* Sequence alignment
* Somatic variant discovery
* Functional annotation

## Midstream Immunogenomic Analysis

* HLA typing
* Peptide generation
* Integrated computational workflows
* MHC Class I prediction
* MHC Class II prediction

## Downstream Neoantigen Prioritization and Validation

* Candidate prioritization
* Binding affinity thresholds
* Transcript expression filtering
* Clonality assessment
* Experimental validation

---

# Repository Contents

This repository includes:

* Complete manuscript and supplementary materials.
* Data extraction spreadsheets.
* Study-level datasets used in the scoping review.
* Meta-analysis datasets and statistical outputs.
* R/Python analysis scripts.
* Figure generation scripts.
* Interactive Sankey workflow visualization.
* High-resolution publication figures.
* Documentation describing the computational workflow framework.

---

# Reproducibility

All analyses presented in the manuscript were generated using the scripts and datasets provided in this repository wherever licensing and publication policies permit. The repository is intended to promote transparency, reproducibility, and reuse of computational workflows for neoantigen identification.

---

# Citation

If you use this repository, datasets, figures, or analysis scripts, please cite the associated publication.

> **Computational Workflows for Neoantigen Identification in Non-Small Cell Lung Cancer: A Scoping Review and Meta-analysis**

A DOI will be added upon publication.

---

# License

Unless otherwise stated, the code in this repository is released under the **MIT License**. Data and figures remain subject to the terms described in the accompanying publication.

---

# Acknowledgements

This repository was developed to support open and reproducible research in computational immuno-oncology. We hope these resources facilitate future methodological development, benchmarking, and standardization of computational neoantigen identification workflows for personalized cancer vaccine research.
