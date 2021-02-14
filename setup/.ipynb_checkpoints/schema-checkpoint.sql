CREATE TABLE "CV_PROFILE" (
"symbol" TEXT,
  "price" REAL,
  "beta" REAL,
  "volAvg" INTEGER,
  "mktCap" INTEGER,
  "lastDiv" INTEGER,
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
  "fullTimeEmployees" INTEGER,
  "phone" INTEGER,
  "address" TEXT,
  "city" TEXT,
  "state" TEXT,
  "zip" INTEGER,
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
  "yearHigh" INTEGER,
  "yearLow" REAL,
  "marketCap" INTEGER,
  "priceAvg50" REAL,
  "priceAvg200" REAL,
  "volume" INTEGER,
  "avgVolume" INTEGER,
  "exchange" TEXT,
  "open" REAL,
  "previousClose" REAL,
  "eps" REAL,
  "pe" REAL,
  "earningsAnnouncement" TEXT,
  "sharesOutstanding" INTEGER,
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
  "growthShortTermDebt" INTEGER,
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
  "growthInventory" INTEGER,
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
  "growthCommonStockIssued" INTEGER,
  "growthCommonStockRepurchased" REAL,
  "growthDividendsPaid" INTEGER,
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
  "ebtPerEbit" INTEGER,
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
  "payoutRatio" INTEGER,
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
CREATE TABLE "CV_RATIOSQ_QTR" (
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
  "ebtPerEbit" INTEGER,
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
  "payoutRatio" INTEGER,
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
  "workingCapitalTTM" INTEGER,
  "tangibleAssetValueTTM" INTEGER,
  "netCurrentAssetValueTTM" REAL,
  "investedCapitalTTM" REAL,
  "averageReceivablesTTM" INTEGER,
  "averagePayablesTTM" INTEGER,
  "averageInventoryTTM" INTEGER,
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
  "payoutRatio" INTEGER,
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
  "workingCapital" INTEGER,
  "tangibleAssetValue" INTEGER,
  "netCurrentAssetValue" INTEGER,
  "investedCapital" REAL,
  "averageReceivables" INTEGER,
  "averagePayables" INTEGER,
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
  "payoutRatio" INTEGER,
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
  "workingCapital" INTEGER,
  "tangibleAssetValue" INTEGER,
  "netCurrentAssetValue" INTEGER,
  "investedCapital" REAL,
  "averageReceivables" INTEGER,
  "averagePayables" INTEGER,
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
  "dividendsperShareGrowth" INTEGER,
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
  "tenYDividendperShareGrowthPerShare" INTEGER,
  "fiveYDividendperShareGrowthPerShare" INTEGER,
  "threeYDividendperShareGrowthPerShare" INTEGER,
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
  "dividendsperShareGrowth" INTEGER,
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
  "tenYDividendperShareGrowthPerShare" INTEGER,
  "fiveYDividendperShareGrowthPerShare" INTEGER,
  "threeYDividendperShareGrowthPerShare" INTEGER,
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
