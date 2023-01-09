# READ ME

## Installation

To install the latest version of this package, please use the following lines in R:

install.packages("devtools") 

devtools::install_github('CarolinaOliveira001/courtlet', ref = '1993732210393b9598d1b7f91b8390f5cca6a84e')

------------------------------------------------------------

## Description of the package

This package is named "courtlet". Courtlet means petty court or small courtyard. 

In this courtlet package, there is one data set and one function. The data set is from Kaggle (https://www.kaggle.com/datasets/deepcontractor/supreme-court-judgment-prediction) and it is about Supreme court data from the United States of America. On top of that, the function clean_text takes a data set and the column which one desires to clean as input. The output is a clean column by removing "\<p\>", "\<\/p\>" and "\n" if needed.

This simple package was made for an university course about R from the Dr. Bruno André Rodrigues Coelho. However more changes and more functions can be added any time. I advise to always check the READ ME from this package for new possible updates.
