# Assignment Results Summary

## WBC Diseased vs Non-diseased Groups

The WBC dataset contains 50 diseased and 50 non-diseased observations with six variables: Eccentricity, Area, Perimeter, Solidity, Extent, and Diameter.

The group mean vectors were very similar:

- Diseased: `(214.9240, 129.9520, 129.6960, 8.2900, 10.1000, 141.5360)`
- Non-diseased: `(215.0140, 129.9340, 129.7440, 8.3200, 10.2360, 141.4980)`

Hotelling's T-square test did not find a statistically significant multivariate difference between the two groups at alpha = 0.05:

- T-square = 6.0115921
- F = 0.950813
- F critical = 2.1976785
- p-value = 0.4629967

The separate two-sample t-tests also did not identify any individually significant variable differences at the 5 percent level.

## WBC PCA

For the diseased group, the first three principal components explained about 85.42 percent of the total variance. PC1 explained 43.05 percent and PC2 explained 26.59 percent.

For the non-diseased group, the first three principal components explained about 78.99 percent of the total variance. PC1 explained 33.54 percent and PC2 explained 28.38 percent.

Overall, the diseased group showed slightly stronger concentration of variance in the first few components, while the non-diseased group spread variation more evenly.

## Twin Data

The paired Hotelling's T-square test used four difference variables from 30 paired observations. The test did not reject the null hypothesis that the mean difference vector is zero:

- T-square = 9.1496452
- F = 2.0507825
- df1 = 4
- df2 = 26
- p-value = 0.1165385
- F critical = 2.7425941

## THC Chemical PCA

The THC dataset contains 178 observations and 13 chemical variables. The first three principal components had eigenvalues greater than 1 and together explained 66.53 percent of the total variation:

- PC1: eigenvalue = 4.7059, explained variance = 36.20 percent
- PC2: eigenvalue = 2.4969, explained variance = 19.21 percent
- PC3: eigenvalue = 1.4461, explained variance = 11.12 percent

The 95 percent confidence intervals for the first three eigenvalues were all above 1, supporting retention of these three principal components.

