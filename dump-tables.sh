
U=root
DB=BudgetData
OUTDIR=data-csv

# Note: if you load this data into Excel, you need to pre-format 
# the first column to be "Text", otherwise it will try to parse
# (incorrectly) the BudgetBookVersion as a "slash date" (e.g. 2003/04 
# will be incorrectly converted to April 2003).

mysql -u $U  --batch $DB -e "select * from BudgetExpenditureAnalysis;"  > $OUTDIR/ExpenditureAnalysis.csv
mysql -u $U  --batch $DB -e "select * from BudgetExpenditureSummary;"   > $OUTDIR/ExpenditureSummary.csv
mysql -u $U  --batch $DB -e "select * from BudgetRevenueAnalysis;"      > $OUTDIR/RevenueAnalysis.csv
mysql -u $U  --batch $DB -e "select * from BudgetRevenuesummary;"       > $OUTDIR/RevenueSummary.csv
mysql -u $U  --batch $DB -e "select * from BudgetExpenditureDetails;"   > $OUTDIR/ExpenditureDetails.csv
mysql -u $U  --batch $DB -e "select * from BudgetEmploymentSummary;"    > $OUTDIR/EmploymentSummary.csv