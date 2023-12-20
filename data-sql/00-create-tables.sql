
create table BudgetExpenditureAnalysis (
		BudgetBookVersion nvarchar(7)
		, ObjectCode nvarchar(255)
		, BudgetYear nvarchar(7)
		, DataVersion nvarchar(8)
		, DataValue numeric(15, 0)
        )
;

create table BudgetExpenditureSummary (
		BudgetBookVersion nvarchar(7)
		, Ministry nvarchar(255)
		, HeadNumber nvarchar(3)
		, HeadName nvarchar(255)
		, BudgetYear nvarchar(7)
		, DataVersion nvarchar(8)
		, DataValue numeric(15, 0)
        )
;

create table BudgetExpenditureDetails (
		BudgetBookVersion nvarchar(7)
		, Ministry nvarchar(255)
		, HeadNumber nvarchar(3)
		, HeadName nvarchar(255)
        , PageNumber nvarchar(4)
        , ProgramNumber nvarchar(8)
        , ProgramName nvarchar(255)
        , BusinessUnitNumber nvarchar(8)
        , BusinessUnitName nvarchar(255)
		, BudgetYear nvarchar(7)
		, DataVersion nvarchar(8)
		, DataValue numeric(15, 0)
        )
;

create table BudgetRevenueAnalysis (
		BudgetBookVersion nvarchar(7)
		, AnalysisGroup nvarchar(255)
		, HeadNumber nvarchar(3)
		, RevenueDescription nvarchar(255)
		, BudgetYear nvarchar(7)
		, DataVersion nvarchar(8)
		, DataValue numeric(15, 0)
        )
;

create table BudgetRevenueSummary (
		BudgetBookVersion nvarchar(7)
		, Ministry nvarchar(255)
		, HeadNumber nvarchar(3)
		, HeadName nvarchar(255)
		, BudgetYear nvarchar(7)
		, DataVersion nvarchar(8)
		, DataValue numeric(15, 0)
        )
;

create table MinistrySort (
		Ministry nvarchar(255)
		, SortOrder int
        )
;