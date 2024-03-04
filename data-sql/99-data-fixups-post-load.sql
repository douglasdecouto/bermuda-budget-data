
/*
Run this after running the scripts to populate the data tables via insert scripts.
They fix a few things that are funny in the data that did not get addressed in the
'bulk' loading and mannupulation.
*/


/***************************
Glitch in Pub Svc Comm BU Name
*****************************/

update BudgetExpenditureDetails set BusinessUnitName='PUBLIC SERVICE COMMISSION'
where BusinessUnitName='36140 PUBLIC SERVICE COMMISSION'
and BusinessUnitNumber='36140';


/****************************************
Fix ObjectCodes in high-level analysis table
*****************************************/

update BudgetExpenditureAnalysis set ObjectCode='ADVERTISING & PROMOTION' where ObjectCode='ADVERTISING ^PROMOTION';

update BudgetExpenditureAnalysis set ObjectCode='CLOTHING, UNIFORMS, LAUNDRY' where ObjectCode='CLOTHING & UNIFORMS';
update BudgetExpenditureAnalysis set ObjectCode='CLOTHING, UNIFORMS, LAUNDRY' where ObjectCode='CLOTHING AND UNIFORMS';




update BudgetExpenditureAnalysis set ObjectCode='EMPLOYER OVERHEAD' where ObjectCode='EMPLOYER OVERHEAD (i)';

update BudgetExpenditureAnalysis set ObjectCode='ENERGY' where ObjectCode='ENERGY (iii)';
update BudgetExpenditureAnalysis set ObjectCode='EQUIPMENT PURCHASES' where ObjectCode='EQUIPMENT';

update BudgetExpenditureAnalysis set ObjectCode='GOVT. GRANTS & CONTRIBUTIONS' where ObjectCode='GRANTS & CONTRIBUTIONS';
update BudgetExpenditureAnalysis set ObjectCode='GOVT. GRANTS & CONTRIBUTIONS' where ObjectCode='GRANTS & CONTRIBUTIONS (ii)';
update BudgetExpenditureAnalysis set ObjectCode='GOVT. GRANTS & CONTRIBUTIONS' where ObjectCode='GRANTS & CONTRIBUTIONS (iii)';

update BudgetExpenditureAnalysis set ObjectCode='MATERIALS & SUPPLIES' where ObjectCode='MATERIALS & SUPPLIES';
update BudgetExpenditureAnalysis set ObjectCode='MATERIALS & SUPPLIES' where ObjectCode='MATERIALS & SUPPLIES (iv)';
update BudgetExpenditureAnalysis set ObjectCode='MATERIALS & SUPPLIES' where ObjectCode='MATERIALS &SUPPLIES';
update BudgetExpenditureAnalysis set ObjectCode='MEMBERS PENSIONS' where ObjectCode='MEMBERS* PENSION COSTS';

update BudgetExpenditureAnalysis set ObjectCode='MEMBERS PENSIONS' where ObjectCode='MINISTERS & MEMBERS PENSION';


update BudgetExpenditureAnalysis set ObjectCode='MATERIALS & SUPPLIES' where ObjectCode='OPERATIONAL MATERIALS & SUPPLIES';
update BudgetExpenditureAnalysis set ObjectCode='MATERIALS & SUPPLIES' where ObjectCode='OPERATIONAL MATLS & SUPPL';



update BudgetExpenditureAnalysis set ObjectCode='POSTAGE, CABLES & PHONE' where ObjectCode='POSTAGES CABLES AND TELEPHONES';
update BudgetExpenditureAnalysis set ObjectCode='PRINTING, STATIONERY & ADVERTISING' where ObjectCode='PRINTING STATIONERY & ADVERTSNG';
update BudgetExpenditureAnalysis set ObjectCode='PRINTING, STATIONERY & ADVERTISING' where ObjectCode='PRINTING, STATIONERY & ADVRT';
update BudgetExpenditureAnalysis set ObjectCode='PROFESSIONAL SERVICES' where ObjectCode='PROFESSIONAL & SPECIAL SRVCS';
update BudgetExpenditureAnalysis set ObjectCode='PROFESSIONAL SERVICES' where ObjectCode='PROFESSIONAL & SPECIAL SVCES.';
update BudgetExpenditureAnalysis set ObjectCode='PROFESSIONAL SERVICES' where ObjectCode='PROFESSIONAL SERVICE (ii)';
update BudgetExpenditureAnalysis set ObjectCode='PROFESSIONAL SERVICES' where ObjectCode='PROFESSIONAL SERVICES';
update BudgetExpenditureAnalysis set ObjectCode='DEBT CHARGES' where ObjectCode='PUBLIC DEBT';
update BudgetExpenditureAnalysis set ObjectCode='DEBT CHARGES' where ObjectCode='PUBLIC DEBT CHARGES';
update BudgetExpenditureAnalysis set ObjectCode='DEBT CHARGES' where ObjectCode='PUBLIC DEBT CHARGES (i)';
update BudgetExpenditureAnalysis set ObjectCode='DEBT CHARGES' where ObjectCode='PUBLIC DEBT CHARGES (ii)';
update BudgetExpenditureAnalysis set ObjectCode='DEBT CHARGES' where ObjectCode='PUBLIC DEBT CHARGES (vi)';
update BudgetExpenditureAnalysis set ObjectCode='W & E DEPARTMENTAL SUPPORT' where ObjectCode='PWO DEPARTMENTAL SUPPORT';
update BudgetExpenditureAnalysis set ObjectCode='RECEIPTS TO CREDITED TO PROGRAM' where ObjectCode='RECEIPTS CREDITED TO PROG';
update BudgetExpenditureAnalysis set ObjectCode='RECEIPTS TO CREDITED TO PROGRAM' where ObjectCode='RECEIPTS CREDITED TO PROGRAMME';

update BudgetExpenditureAnalysis set ObjectCode='REPAIR AND MAINTENANCE' where ObjectCode='REPAIR & MAINTENANCE';
update BudgetExpenditureAnalysis set ObjectCode='REPAIR AND MAINTENANCE' where ObjectCode='REPAIR AND MAINTENANCE';




update BudgetExpenditureAnalysis set ObjectCode='SUPERANNUATION & PENSION' where ObjectCode='SUPERANNUATION ANO PENSIONS';

update BudgetExpenditureAnalysis set ObjectCode='TRANSFERS & OTHER FUNDS' where ObjectCode='TRANSFER TO OTHER FUNDS';
update BudgetExpenditureAnalysis set ObjectCode='TRANSFERS & OTHER FUNDS' where ObjectCode='TRANSFER TO OTHER FUNDS (i)';
update BudgetExpenditureAnalysis set ObjectCode='TRANSFERS & OTHER FUNDS' where ObjectCode='TRANSFER TO OTHER FUNDS (VA';

update BudgetExpenditureAnalysis set ObjectCode='TRANSPORT & TRAVEL' where ObjectCode='TRANSPORT & TRAVELING';
update BudgetExpenditureAnalysis set ObjectCode='TRANSPORT & TRAVEL' where ObjectCode='TRANSPORT ANO TRAVELLING';
update BudgetExpenditureAnalysis set ObjectCode='TRAVEL' where ObjectCode='TRAVEL';
update BudgetExpenditureAnalysis set ObjectCode='TRAVEL' where ObjectCode='TRAVELING';


