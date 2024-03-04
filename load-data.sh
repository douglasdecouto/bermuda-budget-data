
U=root
DB=BudgetData
DATADIR=data-sql

mysql -u $U -e "create database $DB"

mysql -u $U $DB < $DATADIR/00-create-tables.sql

mysql -u $U $DB < $DATADIR/budget-data-expenditure-analysis.sql

mysql -u $U $DB < $DATADIR/budget-data-expenditure-summary.sql
mysql -u $U $DB < $DATADIR/budget-data-expenditure-details.sql

mysql -u $U $DB < $DATADIR/budget-data-revenue-analysis.sql
mysql -u $U $DB < $DATADIR/budget-data-revenue-summary.sql

mysql -u $U $DB < $DATADIR/budget-data-employment-summary.sql

mysql -u $U $DB < $DATADIR/budget-data-capital-summary.sql


mysql -u $U $DB < $DATADIR/budget-data-ministry-sort.sql

mysql -u $U $DB < $DATADIR/99-data-fixups-post-load.sql
