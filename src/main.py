import pandas as pd
from matplotlib import pyplot as plt
import numpy as np
plt.style.use('ggplot')
df = pd.read_excel(r'E:\SBL templtate\ASB2022_all\T31.xlsx',sheet_name='Sheet1')
varlist = list(df)
varlist.remove('year')
# df.plot(x = 'year',y=[ 'Canada', 'Chile', 'Mexico', 'United States', 'Denmark', 'Norway', 'United Kingdom', 'Others', 'Australia', 'Others.1', 'China', 'India', 'Other Asia', 'Brunei', 'Indonesia', 'Malaysia', 'Vietnam', 'Others.2', 'Latin America', 'Argentina', 'Brazil', 'Colombia', 'Ecuador', 'Venezuela', 'Others.3', 'Middle East ', 'IR Iran', 'Iraq', 'Kuwait', 'Oman', 'Qatar', 'Saudi Arabia', 'Syrian Arab Rep.', 'United Arab Emirates', 'Others.4', 'Africa ', 'Algeria', 'Angola', 'Congo', 'Egypt', 'Equatorial Guinea', 'Gabon', 'Libya', 'Nigeria', 'Sudans', 'Others.5', 'Russia', 'Other Eurasia', 'Azerbaijan', 'Belarus', 'Kazakhstan', 'Turkmenistan', 'Ukraine', 'Uzbekistan`', 'Others.6', 'Other Europe'])
region = df[['year','OECD Americas','OECD Europe','OECD Asia and Pacific','China','India','Other Asia','Latin America','Middle East','Africa','Russia','Other Europe']]
# region.iloc[:,1:] = region.iloc[:,1:].apply(lambda x: np.log(x))
y1 = list(region)
y1.remove("year")
for item in y1:
    plt.plot(df["year"], region[item],label = "%s"%item)
plt.ylabel("Proven Crude Reserve")
plt.xlabel("Year")
plt.legend(loc='best')
plt.show()