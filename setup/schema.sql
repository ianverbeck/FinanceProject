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
  "revenueEstimated" REAL
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

CREATE TABLE "CV_FS_CASHFLOW_YR" (
"date" TIMESTAMP,
  "symbol" TEXT,
  "reportedCurrency" TEXT,
  "fillingDate" TEXT,
  "acceptedDate" TEXT,
  "period" TEXT,
  "netIncome" INTEGER,
  "depreciationAndAmortization" INTEGER,
  "deferredIncomeTax" INTEGER,
  "stockBasedCompensation" INTEGER,
  "changeInWorkingCapital" INTEGER,
  "accountsReceivables" INTEGER,
  "inventory" INTEGER,
  "accountsPayables" INTEGER,
  "otherWorkingCapital" INTEGER,
  "otherNonCashItems" INTEGER,
  "netCashProvidedByOperatingActivities" INTEGER,
  "investmentsInPropertyPlantAndEquipment" INTEGER,
  "acquisitionsNet" INTEGER,
  "purchasesOfInvestments" INTEGER,
  "salesMaturitiesOfInvestments" INTEGER,
  "otherInvestingActivites" INTEGER,
  "netCashUsedForInvestingActivites" INTEGER,
  "debtRepayment" INTEGER,
  "commonStockIssued" INTEGER,
  "commonStockRepurchased" INTEGER,
  "dividendsPaid" INTEGER,
  "otherFinancingActivites" INTEGER,
  "netCashUsedProvidedByFinancingActivities" INTEGER,
  "effectOfForexChangesOnCash" INTEGER,
  "netChangeInCash" INTEGER,
  "cashAtEndOfPeriod" INTEGER,
  "cashAtBeginningOfPeriod" INTEGER,
  "operatingCashFlow" INTEGER,
  "capitalExpenditure" INTEGER,
  "freeCashFlow" INTEGER,
  "link" TEXT,
  "finalLink" TEXT
);

CREATE TABLE "CV_FS_CASHFLOW_QTR" (
"date" TIMESTAMP,
  "symbol" TEXT,
  "reportedCurrency" TEXT,
  "fillingDate" TEXT,
  "acceptedDate" TEXT,
  "period" TEXT,
  "netIncome" INTEGER,
  "depreciationAndAmortization" INTEGER,
  "deferredIncomeTax" INTEGER,
  "stockBasedCompensation" INTEGER,
  "changeInWorkingCapital" INTEGER,
  "accountsReceivables" INTEGER,
  "inventory" INTEGER,
  "accountsPayables" INTEGER,
  "otherWorkingCapital" INTEGER,
  "otherNonCashItems" INTEGER,
  "netCashProvidedByOperatingActivities" INTEGER,
  "investmentsInPropertyPlantAndEquipment" INTEGER,
  "acquisitionsNet" INTEGER,
  "purchasesOfInvestments" INTEGER,
  "salesMaturitiesOfInvestments" INTEGER,
  "otherInvestingActivites" INTEGER,
  "netCashUsedForInvestingActivites" INTEGER,
  "debtRepayment" INTEGER,
  "commonStockIssued" INTEGER,
  "commonStockRepurchased" INTEGER,
  "dividendsPaid" INTEGER,
  "otherFinancingActivites" INTEGER,
  "netCashUsedProvidedByFinancingActivities" INTEGER,
  "effectOfForexChangesOnCash" INTEGER,
  "netChangeInCash" INTEGER,
  "cashAtEndOfPeriod" INTEGER,
  "cashAtBeginningOfPeriod" INTEGER,
  "operatingCashFlow" INTEGER,
  "capitalExpenditure" INTEGER,
  "freeCashFlow" INTEGER,
  "link" TEXT,
  "finalLink" TEXT
);

CREATE TABLE "CV_FS_INCOMEGROWTH_YR" (
"date" TIMESTAMP,
  "symbol" TEXT,
  "period" TEXT,
  "growthRevenue" REAL,
  "growthCostOfRevenue" REAL,
  "growthGrossProfit" REAL,
  "growthGrossProfitRatio" REAL,
  "growthResearchAndDevelopmentExpenses" REAL,
  "growthGeneralAndAdministrativeExpenses" REAL,
  "growthSellingAndMarketingExpenses" REAL,
  "growthOtherExpenses" REAL,
  "growthOperatingExpenses" REAL,
  "growthCostAndExpenses" REAL,
  "growthInterestExpense" REAL,
  "growthDepreciationAndAmortization" REAL,
  "growthEBITDA" REAL,
  "growthEBITDARatio" REAL,
  "growthOperatingIncome" REAL,
  "growthOperatingIncomeRatio" REAL,
  "growthTotalOtherIncomeExpensesNet" REAL,
  "growthIncomeBeforeTax" REAL,
  "growthIncomeBeforeTaxRatio" REAL,
  "growthIncomeTaxExpense" REAL,
  "growthNetIncome" REAL,
  "growthNetIncomeRatio" REAL,
  "growthEPS" REAL,
  "growthEPSDiluted" REAL,
  "growthWeightedAverageShsOut" REAL,
  "growthWeightedAverageShsOutDil" REAL
);

CREATE TABLE "CV_FS_BALANCEGROWTH_YR" (
"date" TIMESTAMP,
  "symbol" TEXT,
  "period" TEXT,
  "growthCashAndCashEquivalents" REAL,
  "growthShortTermInvestments" REAL,
  "growthCashAndShortTermInvestments" REAL,
  "growthNetReceivables" REAL,
  "growthInventory" REAL,
  "growthOtherCurrentAssets" REAL,
  "growthTotalCurrentAssets" REAL,
  "growthPropertyPlantEquipmentNet" REAL,
  "growthGoodwill" REAL,
  "growthIntangibleAssets" REAL,
  "growthGoodwillAndIntangibleAssets" REAL,
  "growthLongTermInvestments" REAL,
  "growthTaxAssets" REAL,
  "growthOtherNonCurrentAssets" REAL,
  "growthTotalNonCurrentAssets" REAL,
  "growthOtherAssets" REAL,
  "growthTotalAssets" REAL,
  "growthAccountPayables" REAL,
  "growthShortTermDebt" REAL,
  "growthTaxPayables" REAL,
  "growthDeferredRevenue" REAL,
  "growthOtherCurrentLiabilities" REAL,
  "growthTotalCurrentLiabilities" REAL,
  "growthLongTermDebt" REAL,
  "growthDeferredRevenueNonCurrent" REAL,
  "growthDeferrredTaxLiabilitiesNonCurrent" REAL,
  "growthOtherNonCurrentLiabilities" REAL,
  "growthTotalNonCurrentLiabilities" REAL,
  "growthOtherLiabilities" REAL,
  "growthTotalLiabilities" REAL,
  "growthCommonStock" REAL,
  "growthRetainedEarnings" REAL,
  "growthAccumulatedOtherComprehensiveIncomeLoss" REAL,
  "growthOthertotalStockholdersEquity" REAL,
  "growthTotalStockholdersEquity" REAL,
  "growthTotalLiabilitiesAndStockholdersEquity" REAL,
  "growthTotalInvestments" REAL,
  "growthTotalDebt" REAL,
  "growthNetDebt" REAL
);

CREATE TABLE "CV_FS_CASHGROWTH_YR" (
"date" TIMESTAMP,
  "symbol" TEXT,
  "period" TEXT,
  "growthNetIncome" REAL,
  "growthDepreciationAndAmortization" REAL,
  "growthDeferredIncomeTax" REAL,
  "growthStockBasedCompensation" REAL,
  "growthChangeInWorkingCapital" REAL,
  "growthAccountsReceivables" REAL,
  "growthInventory" REAL,
  "growthAccountsPayables" REAL,
  "growthOtherWorkingCapital" REAL,
  "growthOtherNonCashItems" REAL,
  "growthNetCashProvidedByOperatingActivites" REAL,
  "growthInvestmentsInPropertyPlantAndEquipment" REAL,
  "growthAcquisitionsNet" REAL,
  "growthPurchasesOfInvestments" REAL,
  "growthSalesMaturitiesOfInvestments" REAL,
  "growthOtherInvestingActivites" REAL,
  "growthNetCashUsedForInvestingActivites" REAL,
  "growthDebtRepayment" REAL,
  "growthCommonStockIssued" REAL,
  "growthCommonStockRepurchased" REAL,
  "growthDividendsPaid" REAL,
  "growthOtherFinancingActivites" REAL,
  "growthNetCashUsedProvidedByFinancingActivities" REAL,
  "growthEffectOfForexChangesOnCash" REAL,
  "growthNetChangeInCash" REAL,
  "growthCashAtEndOfPeriod" REAL,
  "growthCashAtBeginningOfPeriod" REAL,
  "growthOperatingCashFlow" REAL,
  "growthCapitalExpenditure" REAL,
  "growthFreeCashFlow" REAL
);

CREATE TABLE "CV_RATIOS_TTM" (
"dividendYielTTM" REAL,
  "dividendYielPercentageTTM" REAL,
  "peRatioTTM" REAL,
  "pegRatioTTM" REAL,
  "payoutRatioTTM" REAL,
  "currentRatioTTM" REAL,
  "quickRatioTTM" REAL,
  "cashRatioTTM" REAL,
  "daysOfSalesOutstandingTTM" REAL,
  "daysOfInventoryOutstandingTTM" REAL,
  "operatingCycleTTM" REAL,
  "daysOfPayablesOutstandingTTM" REAL,
  "cashConversionCycleTTM" REAL,
  "grossProfitMarginTTM" REAL,
  "operatingProfitMarginTTM" REAL,
  "pretaxProfitMarginTTM" REAL,
  "netProfitMarginTTM" REAL,
  "effectiveTaxRateTTM" REAL,
  "returnOnAssetsTTM" REAL,
  "returnOnEquityTTM" REAL,
  "returnOnCapitalEmployedTTM" REAL,
  "netIncomePerEBTTTM" REAL,
  "ebtPerEbitTTM" INTEGER,
  "ebitPerRevenueTTM" REAL,
  "debtRatioTTM" REAL,
  "debtEquityRatioTTM" REAL,
  "longTermDebtToCapitalizationTTM" REAL,
  "totalDebtToCapitalizationTTM" REAL,
  "interestCoverageTTM" REAL,
  "cashFlowToDebtRatioTTM" REAL,
  "companyEquityMultiplierTTM" REAL,
  "receivablesTurnoverTTM" REAL,
  "payablesTurnoverTTM" REAL,
  "inventoryTurnoverTTM" REAL,
  "fixedAssetTurnoverTTM" REAL,
  "assetTurnoverTTM" REAL,
  "operatingCashFlowPerShareTTM" REAL,
  "freeCashFlowPerShareTTM" REAL,
  "cashPerShareTTM" REAL,
  "operatingCashFlowSalesRatioTTM" REAL,
  "freeCashFlowOperatingCashFlowRatioTTM" REAL,
  "cashFlowCoverageRatiosTTM" REAL,
  "shortTermCoverageRatiosTTM" REAL,
  "capitalExpenditureCoverageRatioTTM" REAL,
  "dividendPaidAndCapexCoverageRatioTTM" REAL,
  "priceBookValueRatioTTM" REAL,
  "priceToBookRatioTTM" REAL,
  "priceToSalesRatioTTM" REAL,
  "priceEarningsRatioTTM" REAL,
  "priceToFreeCashFlowsRatioTTM" REAL,
  "priceToOperatingCashFlowsRatioTTM" REAL,
  "priceCashFlowRatioTTM" REAL,
  "priceEarningsToGrowthRatioTTM" REAL,
  "priceSalesRatioTTM" REAL,
  "dividendYieldTTM" REAL,
  "enterpriseValueMultipleTTM" REAL,
  "priceFairValueTTM" REAL
);

CREATE TABLE "CV_RATIOS_YR" (
"symbol" TEXT,
  "date" TIMESTAMP,
  "period" TEXT,
  "currentRatio" REAL,
  "quickRatio" REAL,
  "cashRatio" REAL,
  "daysOfSalesOutstanding" REAL,
  "daysOfInventoryOutstanding" REAL,
  "operatingCycle" REAL,
  "daysOfPayablesOutstanding" REAL,
  "cashConversionCycle" REAL,
  "grossProfitMargin" REAL,
  "operatingProfitMargin" REAL,
  "pretaxProfitMargin" REAL,
  "netProfitMargin" REAL,
  "effectiveTaxRate" REAL,
  "returnOnAssets" REAL,
  "returnOnEquity" REAL,
  "returnOnCapitalEmployed" REAL,
  "netIncomePerEBT" REAL,
  "ebtPerEbit" REAL,
  "ebitPerRevenue" REAL,
  "debtRatio" REAL,
  "debtEquityRatio" REAL,
  "longTermDebtToCapitalization" REAL,
  "totalDebtToCapitalization" REAL,
  "interestCoverage" REAL,
  "cashFlowToDebtRatio" REAL,
  "companyEquityMultiplier" REAL,
  "receivablesTurnover" REAL,
  "payablesTurnover" REAL,
  "inventoryTurnover" REAL,
  "fixedAssetTurnover" REAL,
  "assetTurnover" REAL,
  "operatingCashFlowPerShare" REAL,
  "freeCashFlowPerShare" REAL,
  "cashPerShare" REAL,
  "payoutRatio" REAL,
  "operatingCashFlowSalesRatio" REAL,
  "freeCashFlowOperatingCashFlowRatio" REAL,
  "cashFlowCoverageRatios" REAL,
  "shortTermCoverageRatios" REAL,
  "capitalExpenditureCoverageRatio" REAL,
  "dividendPaidAndCapexCoverageRatio" REAL,
  "dividendPayoutRatio" REAL,
  "priceBookValueRatio" REAL,
  "priceToBookRatio" REAL,
  "priceToSalesRatio" REAL,
  "priceEarningsRatio" REAL,
  "priceToFreeCashFlowsRatio" REAL,
  "priceToOperatingCashFlowsRatio" REAL,
  "priceCashFlowRatio" REAL,
  "priceEarningsToGrowthRatio" REAL,
  "priceSalesRatio" REAL,
  "dividendYield" REAL,
  "enterpriseValueMultiple" REAL,
  "priceFairValue" REAL
);

CREATE TABLE "CV_RATIOS_QTR" (
"symbol" TEXT,
  "date" TIMESTAMP,
  "currentRatio" REAL,
  "quickRatio" REAL,
  "cashRatio" REAL,
  "daysOfSalesOutstanding" REAL,
  "daysOfInventoryOutstanding" REAL,
  "operatingCycle" REAL,
  "daysOfPayablesOutstanding" REAL,
  "cashConversionCycle" REAL,
  "grossProfitMargin" REAL,
  "operatingProfitMargin" REAL,
  "pretaxProfitMargin" REAL,
  "netProfitMargin" REAL,
  "effectiveTaxRate" REAL,
  "returnOnAssets" REAL,
  "returnOnEquity" REAL,
  "returnOnCapitalEmployed" REAL,
  "netIncomePerEBT" REAL,
  "ebtPerEbit" REAL,
  "ebitPerRevenue" REAL,
  "debtRatio" REAL,
  "debtEquityRatio" REAL,
  "longTermDebtToCapitalization" REAL,
  "totalDebtToCapitalization" REAL,
  "interestCoverage" REAL,
  "cashFlowToDebtRatio" REAL,
  "companyEquityMultiplier" REAL,
  "receivablesTurnover" REAL,
  "payablesTurnover" REAL,
  "inventoryTurnover" REAL,
  "fixedAssetTurnover" REAL,
  "assetTurnover" REAL,
  "operatingCashFlowPerShare" REAL,
  "freeCashFlowPerShare" REAL,
  "cashPerShare" REAL,
  "payoutRatio" REAL,
  "operatingCashFlowSalesRatio" REAL,
  "freeCashFlowOperatingCashFlowRatio" REAL,
  "cashFlowCoverageRatios" REAL,
  "shortTermCoverageRatios" REAL,
  "capitalExpenditureCoverageRatio" REAL,
  "dividendPaidAndCapexCoverageRatio" REAL,
  "dividendPayoutRatio" REAL,
  "priceBookValueRatio" REAL,
  "priceToBookRatio" REAL,
  "priceToSalesRatio" REAL,
  "priceEarningsRatio" REAL,
  "priceToFreeCashFlowsRatio" REAL,
  "priceToOperatingCashFlowsRatio" REAL,
  "priceCashFlowRatio" REAL,
  "priceEarningsToGrowthRatio" REAL,
  "priceSalesRatio" REAL,
  "dividendYield" REAL,
  "enterpriseValueMultiple" REAL,
  "priceFairValue" REAL
);

CREATE TABLE "CV_ENTERPRISEVALUE_YR" (
"symbol" TEXT,
  "date" TIMESTAMP,
  "stockPrice" REAL,
  "numberOfShares" INTEGER,
  "marketCapitalization" REAL,
  "minusCashAndCashEquivalents" INTEGER,
  "addTotalDebt" INTEGER,
  "enterpriseValue" REAL
);

CREATE TABLE "CV_ENTERPRISEVALUE_QTR" (
"symbol" TEXT,
  "date" TIMESTAMP,
  "stockPrice" REAL,
  "numberOfShares" INTEGER,
  "marketCapitalization" REAL,
  "minusCashAndCashEquivalents" INTEGER,
  "addTotalDebt" INTEGER,
  "enterpriseValue" REAL
);

CREATE TABLE "CV_METRICS_TTM" (
"revenuePerShareTTM" REAL,
  "netIncomePerShareTTM" REAL,
  "operatingCashFlowPerShareTTM" REAL,
  "freeCashFlowPerShareTTM" REAL,
  "cashPerShareTTM" REAL,
  "bookValuePerShareTTM" REAL,
  "tangibleBookValuePerShareTTM" REAL,
  "shareholdersEquityPerShareTTM" REAL,
  "interestDebtPerShareTTM" REAL,
  "marketCapTTM" REAL,
  "enterpriseValueTTM" REAL,
  "peRatioTTM" REAL,
  "priceToSalesRatioTTM" REAL,
  "pocfratioTTM" REAL,
  "pfcfRatioTTM" REAL,
  "pbRatioTTM" REAL,
  "ptbRatioTTM" REAL,
  "evToSalesTTM" REAL,
  "enterpriseValueOverEBITDATTM" REAL,
  "evToOperatingCashFlowTTM" REAL,
  "evToFreeCashFlowTTM" REAL,
  "earningsYieldTTM" REAL,
  "freeCashFlowYieldTTM" REAL,
  "debtToEquityTTM" REAL,
  "debtToAssetsTTM" REAL,
  "netDebtToEBITDATTM" REAL,
  "currentRatioTTM" REAL,
  "interestCoverageTTM" REAL,
  "incomeQualityTTM" REAL,
  "dividendYieldTTM" REAL,
  "dividendYieldPercentageTTM" REAL,
  "payoutRatioTTM" REAL,
  "salesGeneralAndAdministrativeToRevenueTTM" REAL,
  "researchAndDevelopementToRevenueTTM" REAL,
  "intangiblesToTotalAssetsTTM" REAL,
  "capexToOperatingCashFlowTTM" REAL,
  "capexToRevenueTTM" REAL,
  "capexToDepreciationTTM" REAL,
  "stockBasedCompensationToRevenueTTM" REAL,
  "grahamNumberTTM" REAL,
  "roicTTM" REAL,
  "returnOnTangibleAssetsTTM" REAL,
  "grahamNetNetTTM" REAL,
  "workingCapitalTTM" REAL,
  "tangibleAssetValueTTM" REAL,
  "netCurrentAssetValueTTM" REAL,
  "investedCapitalTTM" REAL,
  "averageReceivablesTTM" REAL,
  "averagePayablesTTM" REAL,
  "averageInventoryTTM" REAL,
  "daysSalesOutstandingTTM" REAL,
  "daysPayablesOutstandingTTM" REAL,
  "daysOfInventoryOnHandTTM" REAL,
  "receivablesTurnoverTTM" REAL,
  "payablesTurnoverTTM" REAL,
  "inventoryTurnoverTTM" REAL,
  "roeTTM" REAL,
  "capexPerShareTTM" REAL
);

CREATE TABLE "CV_METRICS_YR" (
"symbol" TEXT,
  "date" TIMESTAMP,
  "revenuePerShare" REAL,
  "netIncomePerShare" REAL,
  "operatingCashFlowPerShare" REAL,
  "freeCashFlowPerShare" REAL,
  "cashPerShare" REAL,
  "bookValuePerShare" REAL,
  "tangibleBookValuePerShare" REAL,
  "shareholdersEquityPerShare" REAL,
  "interestDebtPerShare" REAL,
  "marketCap" REAL,
  "enterpriseValue" REAL,
  "peRatio" REAL,
  "priceToSalesRatio" REAL,
  "pocfratio" REAL,
  "pfcfRatio" REAL,
  "pbRatio" REAL,
  "ptbRatio" REAL,
  "evToSales" REAL,
  "enterpriseValueOverEBITDA" REAL,
  "evToOperatingCashFlow" REAL,
  "evToFreeCashFlow" REAL,
  "earningsYield" REAL,
  "freeCashFlowYield" REAL,
  "debtToEquity" REAL,
  "debtToAssets" REAL,
  "netDebtToEBITDA" REAL,
  "currentRatio" REAL,
  "interestCoverage" REAL,
  "incomeQuality" REAL,
  "dividendYield" REAL,
  "payoutRatio" REAL,
  "salesGeneralAndAdministrativeToRevenue" REAL,
  "researchAndDdevelopementToRevenue" REAL,
  "intangiblesToTotalAssets" REAL,
  "capexToOperatingCashFlow" REAL,
  "capexToRevenue" REAL,
  "capexToDepreciation" REAL,
  "stockBasedCompensationToRevenue" REAL,
  "grahamNumber" REAL,
  "roic" REAL,
  "returnOnTangibleAssets" REAL,
  "grahamNetNet" REAL,
  "workingCapital" REAL,
  "tangibleAssetValue" REAL,
  "netCurrentAssetValue" REAL,
  "investedCapital" REAL,
  "averageReceivables" REAL,
  "averagePayables" REAL,
  "averageInventory" REAL,
  "daysSalesOutstanding" REAL,
  "daysPayablesOutstanding" REAL,
  "daysOfInventoryOnHand" REAL,
  "receivablesTurnover" REAL,
  "payablesTurnover" REAL,
  "inventoryTurnover" REAL,
  "roe" REAL,
  "capexPerShare" REAL
);

CREATE TABLE "CV_METRICS_QTR" (
"symbol" TEXT,
  "date" TIMESTAMP,
  "revenuePerShare" REAL,
  "netIncomePerShare" REAL,
  "operatingCashFlowPerShare" REAL,
  "freeCashFlowPerShare" REAL,
  "cashPerShare" REAL,
  "bookValuePerShare" REAL,
  "tangibleBookValuePerShare" REAL,
  "shareholdersEquityPerShare" REAL,
  "interestDebtPerShare" REAL,
  "marketCap" REAL,
  "enterpriseValue" REAL,
  "peRatio" REAL,
  "priceToSalesRatio" REAL,
  "pocfratio" REAL,
  "pfcfRatio" REAL,
  "pbRatio" REAL,
  "ptbRatio" REAL,
  "evToSales" REAL,
  "enterpriseValueOverEBITDA" REAL,
  "evToOperatingCashFlow" REAL,
  "evToFreeCashFlow" REAL,
  "earningsYield" REAL,
  "freeCashFlowYield" REAL,
  "debtToEquity" REAL,
  "debtToAssets" REAL,
  "netDebtToEBITDA" REAL,
  "currentRatio" REAL,
  "interestCoverage" REAL,
  "incomeQuality" REAL,
  "dividendYield" REAL,
  "payoutRatio" REAL,
  "salesGeneralAndAdministrativeToRevenue" REAL,
  "researchAndDdevelopementToRevenue" REAL,
  "intangiblesToTotalAssets" REAL,
  "capexToOperatingCashFlow" REAL,
  "capexToRevenue" REAL,
  "capexToDepreciation" REAL,
  "stockBasedCompensationToRevenue" REAL,
  "grahamNumber" REAL,
  "roic" REAL,
  "returnOnTangibleAssets" REAL,
  "grahamNetNet" REAL,
  "workingCapital" REAL,
  "tangibleAssetValue" REAL,
  "netCurrentAssetValue" REAL,
  "investedCapital" REAL,
  "averageReceivables" REAL,
  "averagePayables" REAL,
  "averageInventory" REAL,
  "daysSalesOutstanding" REAL,
  "daysPayablesOutstanding" REAL,
  "daysOfInventoryOnHand" REAL,
  "receivablesTurnover" REAL,
  "payablesTurnover" REAL,
  "inventoryTurnover" REAL,
  "roe" REAL,
  "capexPerShare" REAL
);

CREATE TABLE "CV_GROWTH_YR" (
"symbol" TEXT,
  "date" TIMESTAMP,
  "revenueGrowth" REAL,
  "grossProfitGrowth" REAL,
  "ebitgrowth" REAL,
  "operatingIncomeGrowth" REAL,
  "netIncomeGrowth" REAL,
  "epsgrowth" REAL,
  "epsdilutedGrowth" REAL,
  "weightedAverageSharesGrowth" REAL,
  "weightedAverageSharesDilutedGrowth" REAL,
  "dividendsperShareGrowth" REAL,
  "operatingCashFlowGrowth" REAL,
  "freeCashFlowGrowth" REAL,
  "tenYRevenueGrowthPerShare" REAL,
  "fiveYRevenueGrowthPerShare" REAL,
  "threeYRevenueGrowthPerShare" REAL,
  "tenYOperatingCFGrowthPerShare" REAL,
  "fiveYOperatingCFGrowthPerShare" REAL,
  "threeYOperatingCFGrowthPerShare" REAL,
  "tenYNetIncomeGrowthPerShare" REAL,
  "fiveYNetIncomeGrowthPerShare" REAL,
  "threeYNetIncomeGrowthPerShare" REAL,
  "tenYShareholdersEquityGrowthPerShare" REAL,
  "fiveYShareholdersEquityGrowthPerShare" REAL,
  "threeYShareholdersEquityGrowthPerShare" REAL,
  "tenYDividendperShareGrowthPerShare" REAL,
  "fiveYDividendperShareGrowthPerShare" REAL,
  "threeYDividendperShareGrowthPerShare" REAL,
  "receivablesGrowth" REAL,
  "inventoryGrowth" REAL,
  "assetGrowth" REAL,
  "bookValueperShareGrowth" INTEGER,
  "debtGrowth" REAL,
  "rdexpenseGrowth" REAL,
  "sgaexpensesGrowth" REAL
);

CREATE TABLE "CV_GROWTH_QTR" (
"symbol" TEXT,
  "date" TIMESTAMP,
  "revenueGrowth" REAL,
  "grossProfitGrowth" REAL,
  "ebitgrowth" REAL,
  "operatingIncomeGrowth" REAL,
  "netIncomeGrowth" REAL,
  "epsgrowth" REAL,
  "epsdilutedGrowth" REAL,
  "weightedAverageSharesGrowth" REAL,
  "weightedAverageSharesDilutedGrowth" REAL,
  "dividendsperShareGrowth" REAL,
  "operatingCashFlowGrowth" REAL,
  "freeCashFlowGrowth" REAL,
  "tenYRevenueGrowthPerShare" REAL,
  "fiveYRevenueGrowthPerShare" REAL,
  "threeYRevenueGrowthPerShare" REAL,
  "tenYOperatingCFGrowthPerShare" REAL,
  "fiveYOperatingCFGrowthPerShare" REAL,
  "threeYOperatingCFGrowthPerShare" REAL,
  "tenYNetIncomeGrowthPerShare" REAL,
  "fiveYNetIncomeGrowthPerShare" REAL,
  "threeYNetIncomeGrowthPerShare" REAL,
  "tenYShareholdersEquityGrowthPerShare" REAL,
  "fiveYShareholdersEquityGrowthPerShare" REAL,
  "threeYShareholdersEquityGrowthPerShare" REAL,
  "tenYDividendperShareGrowthPerShare" REAL,
  "fiveYDividendperShareGrowthPerShare" REAL,
  "threeYDividendperShareGrowthPerShare" REAL,
  "receivablesGrowth" REAL,
  "inventoryGrowth" REAL,
  "assetGrowth" REAL,
  "bookValueperShareGrowth" INTEGER,
  "debtGrowth" REAL,
  "rdexpenseGrowth" REAL,
  "sgaexpensesGrowth" REAL
);

CREATE TABLE "CV_RATING" (
"symbol" TEXT,
  "date" TIMESTAMP,
  "rating" TEXT,
  "ratingScore" INTEGER,
  "ratingRecommendation" TEXT,
  "ratingDetailsDCFScore" INTEGER,
  "ratingDetailsDCFRecommendation" TEXT,
  "ratingDetailsROEScore" INTEGER,
  "ratingDetailsROERecommendation" TEXT,
  "ratingDetailsROAScore" INTEGER,
  "ratingDetailsROARecommendation" TEXT,
  "ratingDetailsDEScore" INTEGER,
  "ratingDetailsDERecommendation" TEXT,
  "ratingDetailsPEScore" INTEGER,
  "ratingDetailsPERecommendation" TEXT,
  "ratingDetailsPBScore" INTEGER,
  "ratingDetailsPBRecommendation" TEXT
);

CREATE TABLE "CV_RATING_DAY" (
"symbol" TEXT,
  "date" TIMESTAMP,
  "rating" TEXT,
  "ratingScore" INTEGER,
  "ratingRecommendation" TEXT,
  "ratingDetailsDCFScore" INTEGER,
  "ratingDetailsDCFRecommendation" TEXT,
  "ratingDetailsROEScore" INTEGER,
  "ratingDetailsROERecommendation" TEXT,
  "ratingDetailsROAScore" INTEGER,
  "ratingDetailsROARecommendation" TEXT,
  "ratingDetailsDEScore" INTEGER,
  "ratingDetailsDERecommendation" TEXT,
  "ratingDetailsPEScore" INTEGER,
  "ratingDetailsPERecommendation" TEXT,
  "ratingDetailsPBScore" INTEGER,
  "ratingDetailsPBRecommendation" TEXT
);

CREATE TABLE "CV_DCF" (
"symbol" TEXT,
  "date" TIMESTAMP,
  "dcf" REAL,
  "Stock Price" REAL
);

CREATE TABLE "CV_DCF_YR" (
"date" TEXT,
  "Stock Price" REAL,
  "DCF" REAL,
  "symbol" TEXT
);

CREATE TABLE "CV_DCF_QTR" (
"date" TEXT,
  "Stock Price" REAL,
  "DCF" REAL,
  "symbol" TEXT
);

CREATE TABLE "CV_DCF_DAY" (
"symbol" TEXT,
  "date" TIMESTAMP,
  "dcf" REAL
);

CREATE TABLE "CV_MARKETCAP" (
"symbol" TEXT,
  "date" TIMESTAMP,
  "marketCap" REAL
);

CREATE TABLE "CV_MARKETCAP_DAY" (
"symbol" TEXT,
  "date" TIMESTAMP,
  "marketCap" REAL
);

CREATE TABLE "CV_NEWS" (
"symbol" TEXT,
  "publishedDate" TEXT,
  "title" TEXT,
  "image" TEXT,
  "site" TEXT,
  "text" TEXT,
  "url" TEXT
);

CREATE TABLE "CV_PRESSRELEASES" (
"symbol" TEXT,
  "date" TIMESTAMP,
  "title" TEXT,
  "text" TEXT
);

CREATE TABLE "INS_STOCKTRADING" (
"symbol" TEXT,
  "transactionDate" TEXT,
  "reportingCik" INTEGER,
  "transactionType" TEXT,
  "securitiesOwned" REAL,
  "companyCik" INTEGER,
  "reportingName" TEXT,
  "typeOfOwner" TEXT,
  "acquistionOrDisposition" TEXT,
  "formType" TEXT,
  "securitiesTransacted" REAL,
  "securityName" TEXT,
  "link" TEXT
);

CREATE TABLE "CAL_EARNINGSCALENDAR_HIST" (
"date" TIMESTAMP,
  "symbol" TEXT,
  "eps" REAL,
  "epsEstimated" REAL,
  "time" TEXT,
  "revenue" REAL,
  "revenueEstimated" REAL
);

CREATE TABLE "INST_HOLDERS" (
"holder" TEXT,
  "shares" INTEGER,
  "dateReported" TEXT,
  "change" INTEGER,
  "symbol" TEXT
);

CREATE TABLE "INST_MUTFUNDHOLDERS" (
"holder" TEXT,
  "shares" REAL,
  "dateReported" TEXT,
  "change" REAL,
  "weightPercent" REAL,
  "symbol" TEXT
);

CREATE TABLE "INST_ETFHOLDERS" (
"asset" TEXT,
  "sharesNumber" REAL,
  "weightPercentage" REAL,
  "symbol" TEXT
);

CREATE TABLE "INST_ETFSECTORWEIGHTS" (
"symbol" TEXT,
  "sector" TEXT,
  "weightPercentage" TEXT
);

CREATE TABLE "INST_ETFCOUNTRYWEIGHTS" (
"symbol" TEXT,
  "country" TEXT,
  "weightPercentage" TEXT
);

CREATE TABLE "INST_13F" (
"date" TIMESTAMP,
  "fillingDate" TEXT,
  "acceptedDate" TEXT,
  "cik" INTEGER,
  "cusip" TEXT,
  "tickercusip" TEXT,
  "nameOfIssuer" TEXT,
  "shares" INTEGER,
  "titleOfClass" TEXT,
  "value" INTEGER,
  "link" TEXT,
  "finalLink" TEXT
);

CREATE TABLE "TS_PRICE_DAY" (
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

CREATE TABLE "TS_DIVIDENDS_HIST" (
"date" TEXT,
  "label" TEXT,
  "adjDividend" REAL,
  "dividend" REAL,
  "recordDate" TEXT,
  "paymentDate" TEXT,
  "declarationDate" TEXT,
  "symbol" TEXT
);

CREATE TABLE "TS_SPLITS_HIST" (
"date" TEXT,
  "label" TEXT,
  "numerator" REAL,
  "denominator" REAL,
  "symbol" TEXT
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

