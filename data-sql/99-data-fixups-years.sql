/*
Run this to convert all the 'year' values from the 'slash' version to just the
4-digit first year. This is because when tools like Excel see numbers with the 
slash (e.g. 2010/11) they can get confused an try to interpret it as a date.

So the cleanest thing is to drop the slashes and just use the 4 digits of the
year the budget starts in.
*/

update BudgetExpenditureAnalysis    set BudgetBookVersion=left(BudgetBookVersion, 4), BudgetYear=left(BudgetYear, 4);
update BudgetExpenditureSummary     set BudgetBookVersion=left(BudgetBookVersion, 4), BudgetYear=left(BudgetYear, 4);
update BudgetRevenueAnalysis        set BudgetBookVersion=left(BudgetBookVersion, 4), BudgetYear=left(BudgetYear, 4);
update BudgetRevenueSummary         set BudgetBookVersion=left(BudgetBookVersion, 4), BudgetYear=left(BudgetYear, 4);
update BudgetExpenditureDetails     set BudgetBookVersion=left(BudgetBookVersion, 4), BudgetYear=left(BudgetYear, 4);
update BudgetEmploymentSummary      set BudgetBookVersion=left(BudgetBookVersion, 4), BudgetYear=left(BudgetYear, 4);
update CapitalExpenditureSummary    set BudgetBookVersion=left(BudgetBookVersion, 4), BudgetYear=left(BudgetYear, 4);
