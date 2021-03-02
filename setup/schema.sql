CREATE TABLE "G1_CAL_EARNINGSCALENDAR_UPC" (
"date" TIMESTAMP,
  "symbol" TEXT,
  "eps" REAL,
  "epsEstimated" REAL,
  "time" TEXT,
  "revenue" INTEGER,
  "revenueEstimated" INTEGER
);

CREATE TABLE "G1_CV_ETFS" (
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

CREATE TABLE "G1_INST_CIKLIST" (
"cik" INTEGER,
  "name" TEXT
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

CREATE TABLE "G1_CV_TRADABLE" (
"symbol" TEXT,
  "name" TEXT,
  "price" REAL,
  "exchange" TEXT
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

CREATE TABLE "G1_MI_NASDAQHISTLIST" (
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

CREATE TABLE "G1_MF_SYMBOLS" (
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

CREATE TABLE "G1_CV_SYMBOLS" (
"symbol" TEXT,
  "name" TEXT,
  "price" REAL,
  "exchange" TEXT
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

