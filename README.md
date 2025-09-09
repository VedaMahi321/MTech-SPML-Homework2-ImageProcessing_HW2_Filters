# ImageProcessing_HW2_Filters

## 📌 Overview
This repository contains implementations and analysis for **Image Processing Assignment HW2**, focusing on spatial domain filtering and histogram transformations.  
The project covers:
- Histogram Matching
- Gaussian and Median Filters
- Laplacian Filter (Sharpening)
- Non-Local Means Filter (Optional Advanced)

Both **manual implementations** and **MATLAB built-in functions** are provided, with results compared visually and using **Mean Square Error (MSE)**.

---

## 📂 Project Structure
```
├── Q2_1_HistogramMatching_Manual.m
├── Q2_1_HistogramMatching_Function.m
├── Q2_2_GaussianMedian_Manual.m
├── Q2_2_GaussianMedian_Function.m
├── Q2_3_Laplacian_Manual.m
├── Q2_3_Laplacian_Function.m
├── Q2_4_NonLocalMeans.m
├── results/        # Output images & graphs
└── report/         # Word/PDF report files
```

---

## ⚙️ Requirements
- MATLAB R2020a or later  
- Image Processing Toolbox  

---

## 🚀 How to Run
1. Clone this repository:
   ```bash
   git clone https://github.com/your-username/ImageProcessing_HW2_Filters.git
   cd ImageProcessing_HW2_Filters
   ```

2. Open MATLAB and run each script:
   ```matlab
   run('Q2_1_HistogramMatching_Manual.m')
   run('Q2_1_HistogramMatching_Function.m')
   run('Q2_2_GaussianMedian_Manual.m')
   run('Q2_2_GaussianMedian_Function.m')
   run('Q2_3_Laplacian_Manual.m')
   run('Q2_3_Laplacian_Function.m')
   run('Q2_4_NonLocalMeans.m')
   ```

3. Output images and plots will be saved in the **results/** folder.

---

## 📊 Results
### 2.1 Histogram Matching
- Input images with distinct histograms
- Matched outputs visually verified with histogram graphs

### 2.2 Gaussian & Median Filters
- Noise removal effectiveness compared at different kernel sizes & σ values
- Optimal parameters found using MSE calculation

### 2.3 Laplacian Filter
- Sharpening achieved, edges enhanced
- Noise amplification observed

### 2.4 Non-Local Means Filter
- Best trade-off between noise reduction and edge preservation
- Outperforms Gaussian/Median in MSE

---

## 📌 Discussion
- Gaussian filter smooths but blurs edges  
- Median filter is robust against salt & pepper noise  
- Laplacian sharpens edges but amplifies noise  
- Non-local Means provides advanced denoising with edge preservation  

---

## ✅ Conclusion
This assignment demonstrates practical implementation of **histogram matching** and **spatial filtering techniques**, comparing their performance visually and quantitatively.  
Manual implementations validate theoretical understanding, while MATLAB functions provide efficiency.

---

## 📚 References
1. Gonzalez & Woods, *Digital Image Processing, 4th Edition*  
2. MATLAB Documentation  
3. Course Lecture Notes  
