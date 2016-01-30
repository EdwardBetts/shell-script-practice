#!/bin/sh

for TICKER in AAPL MSFT; do
    curl -L "https://quandl.com/api/v3/datasets/WIKI/AAPL.csv?api_key=coVPe8Su_mhi_EJZiorg&limit=20" > "`date %m` ${TICKER}";
done;> "`date %m`${TICKER}";

# datamash --header-in -t, mean 9

#for TICKER in AAPL MSFT; do
curl -L https://quandl.com/api/v3/datasets/WIKI/codes.csv?api_key=coVPe8Su_mhi_EJZiorg
#done;> "`date %m`${TICKER}";

# after that  $unzip -p myfilename

#cat myUnzippedData | awk -F, '{print $1}' > AWKFile

#sed 's~WIKI/~~'
#tr '\n' ' '