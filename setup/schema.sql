CREATE TABLE "G1_CV_SYMBOLS" (
"symbol" TEXT,
  "name" TEXT,
  "price" REAL,
  "exchange" TEXT
);

CREATE TABLE "G1_CV_ETFS" (
"symbol" TEXT,
  "name" TEXT,
  "price" REAL,
  "exchange" TEXT
);

CREATE TABLE "G1_CV_TRADABLE" (
"symbol" TEXT,
  "name" TEXT,
  "price" REAL,
  "exchange" TEXT
);

CREATE TABLE "G1_CV_DELISTED" (
"symbol" TEXT,
  "companyName" TEXT,
  "exchange" TEXT,
  "ipoDate" TEXT,
  "delistedDate" TEXT
);

CREATE TABLE "G1_CAL_EARNINGSCALENDAR_UPC" (
"date" TIMESTAMP,
  "symbol" TEXT,
  "eps" REAL,
  "epsEstimated" REAL,
  "time" TEXT,
  "revenue" INTEGER,
  "revenueEstimated" INTEGER
);

CREATE TABLE "G1_INST_CIKLIST" (
"cik" INTEGER,
  "name" TEXT
);

CREATE TABLE "G1_MI_MAJORINDEXES" (
"symbol" TEXT,
  "name" TEXT,
  "price" REAL,
  "changesPercentage" REAL,
  "change" REAL,
  "dayLow" REAL,
  "dayHigh" REAL,
  "yearHigh" REAL,
  "yearLow" REAL,
  "marketCap" REAL,
  "priceAvg50" REAL,
  "priceAvg200" REAL,
  "volume" REAL,
  "avgVolume" REAL,
  "exchange" TEXT,
  "open" REAL,
  "previousClose" REAL,
  "eps" REAL,
  "pe" REAL,
  "earningsAnnouncement" REAL,
  "sharesOutstanding" REAL,
  "timestamp" TIMESTAMP
);

CREATE TABLE "G1_MI_SP500LIST" (
"symbol" TEXT,
  "name" TEXT,
  "sector" TEXT,
  "subSector" TEXT,
  "headQuarter" TEXT,
  "dateFirstAdded" TEXT,
  "cik" INTEGER,
  "founded" TEXT
);

CREATE TABLE "G1_MI_SP500HIST" (
"dateAdded" TEXT,
  "addedSecurity" TEXT,
  "removedTicker" TEXT,
  "removedSecurity" TEXT,
  "date" TIMESTAMP,
  "reason" TEXT,
  "symbol" TEXT
);

CREATE TABLE "G1_MI_NASDAQLIST" (
"symbol" TEXT,
  "name" TEXT,
  "sector" TEXT,
  "subSector" TEXT,
  "headQuarter" TEXT,
  "dateFirstAdded" TEXT,
  "cik" REAL,
  "founded" TEXT
);

CREATE TABLE "G1_MI_NASDAQHISTLIST" (
"dateAdded" TEXT,
  "addedSecurity" TEXT,
  "removedTicker" TEXT,
  "removedSecurity" TEXT,
  "date" TIMESTAMP,
  "reason" TEXT,
  "symbol" TEXT
);

CREATE TABLE "G1_MI_DOWJLIST" (
"symbol" TEXT,
  "name" TEXT,
  "sector" TEXT,
  "subSector" TEXT,
  "headQuarter" TEXT,
  "dateFirstAdded" TEXT,
  "cik" INTEGER,
  "founded" TEXT
);

CREATE TABLE "G1_MI_DOWJHISTLIST" (
"dateAdded" TEXT,
  "addedSecurity" TEXT,
  "removedTicker" TEXT,
  "removedSecurity" TEXT,
  "date" TIMESTAMP,
  "reason" TEXT,
  "symbol" TEXT
);

CREATE TABLE "G1_COM_SYMBOLS" (
"symbol" TEXT,
  "name" TEXT,
  "currency" TEXT,
  "stockExchange" TEXT,
  "exchangeShortName" TEXT
);

CREATE TABLE "G1_COM_PRICES" (
"symbol" TEXT,
  "name" TEXT,
  "price" REAL,
  "changesPercentage" REAL,
  "change" REAL,
  "dayLow" REAL,
  "dayHigh" REAL,
  "yearHigh" REAL,
  "yearLow" REAL,
  "marketCap" REAL,
  "priceAvg50" REAL,
  "priceAvg200" REAL,
  "volume" INTEGER,
  "avgVolume" REAL,
  "exchange" TEXT,
  "open" REAL,
  "previousClose" REAL,
  "eps" REAL,
  "pe" REAL,
  "earningsAnnouncement" REAL,
  "sharesOutstanding" REAL,
  "timestamp" TIMESTAMP
);

CREATE TABLE "G1_ETF_SYMBOLS" (
"symbol" TEXT,
  "name" TEXT,
  "currency" TEXT,
  "stockExchange" TEXT,
  "exchangeShortName" TEXT
);

CREATE TABLE "G1_ETF_PRICES" (
"symbol" TEXT,
  "name" TEXT,
  "price" REAL,
  "changesPercentage" REAL,
  "change" REAL,
  "dayLow" REAL,
  "dayHigh" REAL,
  "yearHigh" REAL,
  "yearLow" REAL,
  "marketCap" REAL,
  "priceAvg50" REAL,
  "priceAvg200" REAL,
  "volume" REAL,
  "avgVolume" REAL,
  "exchange" TEXT,
  "open" REAL,
  "previousClose" REAL,
  "eps" REAL,
  "pe" REAL,
  "earningsAnnouncement" TEXT,
  "sharesOutstanding" REAL,
  "timestamp" TIMESTAMP
);

CREATE TABLE "G1_MF_SYMBOLS" (
"symbol" TEXT,
  "name" TEXT,
  "currency" TEXT,
  "stockExchange" TEXT,
  "exchangeShortName" TEXT
);

CREATE TABLE "G1_MF_PRICES" (
"symbol" TEXT,
  "name" TEXT,
  "price" REAL,
  "changesPercentage" REAL,
  "change" REAL,
  "dayLow" REAL,
  "dayHigh" REAL,
  "yearHigh" REAL,
  "yearLow" REAL,
  "marketCap" REAL,
  "priceAvg50" REAL,
  "priceAvg200" REAL,
  "volume" REAL,
  "avgVolume" REAL,
  "exchange" TEXT,
  "open" REAL,
  "previousClose" REAL,
  "eps" REAL,
  "pe" REAL,
  "earningsAnnouncement" TEXT,
  "sharesOutstanding" REAL,
  "timestamp" TIMESTAMP
);

CREATE TABLE "MI_INDEXPRICEHIST_DAY" (
"date" TEXT,
  "open" REAL,
  "high" REAL,
  "low" REAL,
  "close" REAL,
  "adjClose" REAL,
  "volume" REAL,
  "unadjustedVolume" REAL,
  "change" REAL,
  "changePercent" REAL,
  "vwap" REAL,
  "label" TEXT,
  "changeOverTime" REAL,
  "symbol" TEXT
);

CREATE TABLE "COM_PRICES_DAY" (
"date" TEXT,
  "open" REAL,
  "high" REAL,
  "low" REAL,
  "close" REAL,
  "adjClose" REAL,
  "volume" REAL,
  "unadjustedVolume" REAL,
  "change" REAL,
  "changePercent" REAL,
  "vwap" REAL,
  "label" TEXT,
  "changeOverTime" REAL,
  "symbol" TEXT
);

CREATE TABLE "MF_PRICES_DAY" (
"date" TEXT,
  "open" REAL,
  "high" REAL,
  "low" REAL,
  "close" REAL,
  "adjClose" REAL,
  "change" REAL,
  "changePercent" REAL,
  "label" TEXT,
  "changeOverTime" REAL,
  "symbol" TEXT
);

CREATE TABLE "CV_PROFILE" (
"symbol" TEXT,
  "price" REAL,
  "beta" REAL,
  "volAvg" INTEGER,
  "mktCap" INTEGER,
  "lastDiv" REAL,
  "range" TEXT,
  "changes" REAL,
  "companyName" TEXT,
  "currency" TEXT,
  "cik" REAL,
  "isin" TEXT,
  "cusip" TEXT,
  "exchange" TEXT,
  "exchangeShortName" TEXT,
  "industry" TEXT,
  "website" TEXT,
  "description" TEXT,
  "ceo" TEXT,
  "sector" TEXT,
  "country" TEXT,
  "fullTimeEmployees" TEXT,
  "phone" TEXT,
  "address" TEXT,
  "city" TEXT,
  "state" TEXT,
  "zip" TEXT,
  "dcfDiff" REAL,
  "dcf" REAL,
  "image" TEXT,
  "ipoDate" TEXT,
  "defaultImage" INTEGER,
  "isEtf" INTEGER,
  "isActivelyTrading" INTEGER
);

CREATE TABLE "CV_QUOTE" (
"symbol" TEXT,
  "name" TEXT,
  "price" REAL,
  "changesPercentage" REAL,
  "change" REAL,
  "dayLow" REAL,
  "dayHigh" REAL,
  "yearHigh" REAL,
  "yearLow" REAL,
  "marketCap" REAL,
  "priceAvg50" REAL,
  "priceAvg200" REAL,
  "volume" REAL,
  "avgVolume" INTEGER,
  "exchange" TEXT,
  "open" REAL,
  "previousClose" REAL,
  "eps" REAL,
  "pe" REAL,
  "earningsAnnouncement" TEXT,
  "sharesOutstanding" REAL,
  "timestamp" TIMESTAMP
);

CREATE TABLE "CV_EXECUTIVES" (
"title" TEXT,
  "name" TEXT,
  "pay" REAL,
  "currencyPay" TEXT,
  "gender" TEXT,
  "yearBorn" REAL,
  "titleSince" REAL
);

CREATE TABLE "CV_FS_INCOME_YR" (
"date" TIMESTAMP,
  "symbol" TEXT,
  "reportedCurrency" TEXT,
  "fillingDate" TEXT,
  "acceptedDate" TEXT,
  "period" TEXT,
  "revenue" INTEGER,
  "costOfRevenue" INTEGER,
  "grossProfit" INTEGER,
  "grossProfitRatio" REAL,
  "researchAndDevelopmentExpenses" INTEGER,
  "generalAndAdministrativeExpenses" INTEGER,
  "sellingAndMarketingExpenses" INTEGER,
  "otherExpenses" INTEGER,
  "operatingExpenses" INTEGER,
  "costAndExpenses" INTEGER,
  "interestExpense" INTEGER,
  "depreciationAndAmortization" INTEGER,
  "ebitda" INTEGER,
  "ebitdaratio" REAL,
  "operatingIncome" INTEGER,
  "operatingIncomeRatio" REAL,
  "totalOtherIncomeExpensesNet" INTEGER,
  "incomeBeforeTax" INTEGER,
  "incomeBeforeTaxRatio" REAL,
  "incomeTaxExpense" INTEGER,
  "netIncome" INTEGER,
  "netIncomeRatio" REAL,
  "eps" REAL,
  "epsdiluted" REAL,
  "weightedAverageShsOut" INTEGER,
  "weightedAverageShsOutDil" INTEGER,
  "link" TEXT,
  "finalLink" TEXT
);

CREATE TABLE "CV_FS_INCOME_QTR" (
"date" TIMESTAMP,
  "symbol" TEXT,
  "reportedCurrency" TEXT,
  "fillingDate" TEXT,
  "acceptedDate" TEXT,
  "period" TEXT,
  "revenue" INTEGER,
  "costOfRevenue" INTEGER,
  "grossProfit" INTEGER,
  "grossProfitRatio" REAL,
  "researchAndDevelopmentExpenses" INTEGER,
  "generalAndAdministrativeExpenses" INTEGER,
  "sellingAndMarketingExpenses" INTEGER,
  "otherExpenses" INTEGER,
  "operatingExpenses" INTEGER,
  "costAndExpenses" INTEGER,
  "interestExpense" INTEGER,
  "depreciationAndAmortization" INTEGER,
  "ebitda" INTEGER,
  "ebitdaratio" REAL,
  "operatingIncome" INTEGER,
  "operatingIncomeRatio" REAL,
  "totalOtherIncomeExpensesNet" INTEGER,
  "incomeBeforeTax" INTEGER,
  "incomeBeforeTaxRatio" REAL,
  "incomeTaxExpense" INTEGER,
  "netIncome" INTEGER,
  "netIncomeRatio" REAL,
  "eps" REAL,
  "epsdiluted" REAL,
  "weightedAverageShsOut" INTEGER,
  "weightedAverageShsOutDil" INTEGER,
  "link" TEXT,
  "finalLink" TEXT
);

CREATE TABLE "CV_FS_BALANCESHEET_YR" (
"date" TIMESTAMP,
  "symbol" TEXT,
  "reportedCurrency" TEXT,
  "fillingDate" TEXT,
  "acceptedDate" TEXT,
  "period" TEXT,
  "cashAndCashEquivalents" INTEGER,
  "shortTermInvestments" INTEGER,
  "cashAndShortTermInvestments" INTEGER,
  "netReceivables" INTEGER,
  "inventory" INTEGER,
  "otherCurrentAssets" INTEGER,
  "totalCurrentAssets" INTEGER,
  "propertyPlantEquipmentNet" INTEGER,
  "goodwill" INTEGER,
  "intangibleAssets" INTEGER,
  "goodwillAndIntangibleAssets" INTEGER,
  "longTermInvestments" INTEGER,
  "taxAssets" INTEGER,
  "otherNonCurrentAssets" INTEGER,
  "totalNonCurrentAssets" INTEGER,
  "otherAssets" INTEGER,
  "totalAssets" INTEGER,
  "accountPayables" INTEGER,
  "shortTermDebt" INTEGER,
  "taxPayables" INTEGER,
  "deferredRevenue" INTEGER,
  "otherCurrentLiabilities" INTEGER,
  "totalCurrentLiabilities" INTEGER,
  "longTermDebt" INTEGER,
  "deferredRevenueNonCurrent" INTEGER,
  "deferredTaxLiabilitiesNonCurrent" INTEGER,
  "otherNonCurrentLiabilities" INTEGER,
  "totalNonCurrentLiabilities" INTEGER,
  "otherLiabilities" INTEGER,
  "totalLiabilities" INTEGER,
  "commonStock" INTEGER,
  "retainedEarnings" INTEGER,
  "accumulatedOtherComprehensiveIncomeLoss" INTEGER,
  "othertotalStockholdersEquity" INTEGER,
  "totalStockholdersEquity" INTEGER,
  "totalLiabilitiesAndStockholdersEquity" INTEGER,
  "totalInvestments" INTEGER,
  "totalDebt" INTEGER,
  "netDebt" INTEGER,
  "link" TEXT,
  "finalLink" TEXT
);

CREATE TABLE "CV_FS_BALANCESHEET_QTR" (
"date" TIMESTAMP,
  "symbol" TEXT,
  "reportedCurrency" TEXT,
  "fillingDate" TEXT,
  "acceptedDate" TEXT,
  "period" TEXT,
  "cashAndCashEquivalents" INTEGER,
  "shortTermInvestments" INTEGER,
  "cashAndShortTermInvestments" INTEGER,
  "netReceivables" INTEGER,
  "inventory" INTEGER,
  "otherCurrentAssets" INTEGER,
  "totalCurrentAssets" INTEGER,
  "propertyPlantEquipmentNet" INTEGER,
  "goodwill" INTEGER,
  "intangibleAssets" INTEGER,
  "goodwillAndIntangibleAssets" INTEGER,
  "longTermInvestments" INTEGER,
  "taxAssets" INTEGER,
  "otherNonCurrentAssets" INTEGER,
  "totalNonCurrentAssets" INTEGER,
  "otherAssets" INTEGER,
  "totalAssets" INTEGER,
  "accountPayables" INTEGER,
  "shortTermDebt" INTEGER,
  "taxPayables" INTEGER,
  "deferredRevenue" INTEGER,
  "otherCurrentLiabilities" INTEGER,
  "totalCurrentLiabilities" INTEGER,
  "longTermDebt" INTEGER,
  "deferredRevenueNonCurrent" INTEGER,
  "deferredTaxLiabilitiesNonCurrent" INTEGER,
  "otherNonCurrentLiabilities" INTEGER,
  "totalNonCurrentLiabilities" INTEGER,
  "otherLiabilities" INTEGER,
  "totalLiabilities" INTEGER,
  "commonStock" INTEGER,
  "retainedEarnings" INTEGER,
  "accumulatedOtherComprehensiveIncomeLoss" INTEGER,
  "othertotalStockholdersEquity" INTEGER,
  "totalStockholdersEquity" INTEGER,
  "totalLiabilitiesAndStockholdersEquity" INTEGER,
  "totalInvestments" INTEGER,
  "totalDebt" INTEGER,
  "netDebt" INTEGER,
  "link" TEXT,
  "finalLink" TEXT
);

