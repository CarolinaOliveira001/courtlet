# READ ME

## Installation

To install the latest version of this package, please use the following line in R:

install.packages("devtools") 

devtools::install_github('CarolinaOliveira001/courtlet', ref = '67b44edb3054bbe132be12849562675076455924')

------------------------------------------------------------

## Description of the package

This package is named "courtlet". Courtlet means petty court or small courtyard. 

In this courtlet package, there is one data set and one function. The data set is from Kaggle (https://www.kaggle.com/datasets/deepcontractor/supreme-court-judgment-prediction) and it is about Supreme court data from the United States of America. On top of that, the function takes a data set and the column which one desires to clean as input. The output is a clean column by removing "\<p\>" and "\<\/p\>" if needed.

This simple package was made for an university course about R from the Dr. Bruno André Rodrigues Coelho. However more changes and more functions can be added any time. I advise to always check the READ ME from this package for new possible updates.
