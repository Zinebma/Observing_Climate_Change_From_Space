# Observing Climate Change From Space 🌍🛰️

[![Last Commit](https://img.shields.io/github/last-commit/Zinebma/Observing_Climate_Change_From_Space)](https://github.com/Zinebma/Observing_Climate_Change_From_Space/commits/main)
[![Repo Size](https://img.shields.io/github/repo-size/Zinebma/Observing_Climate_Change_From_Space)](https://github.com/Zinebma/Observing_Climate_Change_From_Space)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
![Made with MATLAB](https://img.shields.io/badge/Made%20with-MATLAB-orange)

Analysis of Arctic sea ice dynamics using satellite-derived **Sea Surface Temperature (SST)** and **Sea Surface Salinity (SSS)** data.  
This repository demonstrates **data processing, visualisation, and reproducibility** using MATLAB.

---

## 🚩 Problem
Understanding climate dynamics requires monitoring oceans from space.  
Sea surface salinity and temperature are key drivers of:
- Arctic sea ice thickness  
- Climate events like **El Niño / La Niña**  
- Long-term global warming trends  

---

## 💡 Solution
I built a **MATLAB pipeline** that:
1. Reads satellite-derived data stored in **NetCDF** format  
2. Processes variables such as `sst` and `sss`  
3. Generates reproducible **figures and animations** (heatmaps, scatter plots, time series)  
4. Automatically saves plots into the `/figures` folder so they can be embedded in documentation  

---

## 📊 Results

**Demo: Sea Surface Salinity (2010–2016)**  
![Sea Surface Salinity](figures/demo_sss.png)

*(More plots can be added — e.g. SST heatmaps, scatter plots, time-series trends — simply save them to `figures/` and link here)*  

---

## 🛠️ Tech Stack
- **MATLAB** (data processing, visualisation)  
- **NetCDF** (climate data format)  
- **Git + GitHub** (version control, documentation)  

---

## 🌟 Skills Gained
- Data handling & cleaning for scientific datasets  
- Building reproducible pipelines  
- Visualisation of climate data (heatmaps, time-series, scatter plots)  
- Version control with Git & GitHub  
- Communicating technical results through clear documentation  

---

## 📂 Repository Structure
```text
code/matlab/
├── generate_demo_nc.m   # Generate demo NetCDF file
├── mapmaker.m           # Plotting and visualisation function
├── plot_sss_demo.m      # End-to-end demo script

data/demo/
└── .gitkeep             # Placeholder (NetCDF file generated locally by scripts)

figures/
├── demo_sss.png         # Example output figure
└── .gitkeep             # Placeholder

README.md                # Project documentation
.gitignore               # Git ignore rules


## 📦 Data Handling
The repository does **not** include raw NetCDF data to keep it lightweight.  
Instead, you can generate it locally by running:

```matlab
generate_demo_nc('data/demo/demo_sss.nc')




