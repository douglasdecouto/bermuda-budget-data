
mysql -u root --batch test -e "select * from BudgetExpenditureAnalysis;" > data/ExpenditureAnalysis.csv
mysql -u root --batch test -e "select concat('y', BudgetBookVersion) as BBV, Ministry, HeadNumber, HeadName, BudgetYear, DataVersion, DataValue from BudgetExpenditureSummary;" > data/ExpenditureSummary.csv
mysql -u root --batch test -e "select * from BudgetRevenueAnalysis;" > data/RevenueAnalysis.csv
mysql -u root --batch test -e "select * from BudgetRevenuesummary;" > data/RevenueSummary.csv
mysql -u root --batch test -e "select * from BudgetExpenditureDetails;" > data/ExpenditureDetails.csv
