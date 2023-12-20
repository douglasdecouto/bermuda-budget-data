
use test;

/*
Run this after running the scripts to populate the data tables via insert scripts.
They fix a few things that are funny in the data that did not get addressed in the
'bulk' loading and mannupulation.
*/

/****************************************
Fix ObjectCodes
*****************************************/
update BudgetExpenditureAnalysis set ObjectCode='GRANTS & CONTRIBUTIONS'
		where ObjectCode in ('GRANTS & CONTRIBUTIONS (i)', 'GRANTS & CONTRIBUTIONS (ii)', 'GRANTS & CONTRIBUTIONS (iii)');

update BudgetExpenditureAnalysis set ObjectCode='PUBLIC DEBT CHARGES'
		where ObjectCode in ('PUBLIC DEBT CHARGES (i)', 'PUBLIC DEBT CHARGES (ii)', 'PUBLIC DEBT CHARGES (iii)');

update BudgetExpenditureAnalysis set ObjectCode='TRANSFER TO OTHER FUNDS'
		where ObjectCode in ('TRANSFER TO OTHER FUNDS (i)', 'TRANSFER TO OTHER FUNDS (ii)', 'TRANSFER TO OTHER FUNDS (iii)');

/***************************
Glitch in Pub Svc Comm BU Name
*****************************/

update BudgetExpenditureDetails set BusinessUnitName='PUBLIC SERVICE COMMISSION'
where BusinessUnitName='36140 PUBLIC SERVICE COMMISSION'
and BusinessUnitNumber='36140'