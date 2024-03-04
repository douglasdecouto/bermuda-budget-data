

select 		concat('"', left(orig.BudgetBookVersion, 4), '"') as OrigBook, orig.Ministry
			, concat('"', orig.HeadNumber, '"') as HeadNumber, orig.HeadName
			, concat('"', left(orig.BudgetYear, 4), '"') as OrigYr
				, orig.DataVersion as OrigVers, orig.DataValue as OrigEstimate
			, revOrig.BudgetBookVersion as RevOrigBook, revOrig.BudgetYear as RevOrigYr
			, revOrig.DataVersion as RevOrigVers, revOrig.DataValue as RevOrigEstimate
			, revised.BudgetBookVersion as RevBook, revised.BudgetYear as RevYr
			, revised.DataVersion as RevVers, revised.DataValue as RevEstimate
			, final.BudgetBookVersion as FinalBook, final.BudgetYear as FinalYr
			, final.DataVersion as FinalVers, final.DataValue as FinalAmount			
from		BudgetExpenditureSummary orig
left join	BudgetExpenditureSummary revised
				on	revised.BudgetYear=orig.BudgetBookVersion
					and orig.HeadNumber=revised.HeadNumber
				and orig.DataVersion='ESTIMATE'
				and revised.DataVersion='REVISED'
left join	BudgetExpenditureSummary revOrig
				on	revOrig.BudgetYear=orig.BudgetBookVersion
					and orig.HeadNumber=revOrig.HeadNumber
				and orig.DataVersion='ESTIMATE'
				and revOrig.DataVersion='ORIGINAL'
left join	BudgetExpenditureSummary final 
				on	final.BudgetYear=orig.BudgetBookVersion
					and orig.HeadNumber=final.HeadNumber
				and orig.DataVersion='ESTIMATE'
				and final.DataVersion='ACTUAL'
where 		orig.BudgetYear=orig.BudgetBookVersion
/*and			orig.BudgetBookVersion='2021/22'*/
/*and			orig.HeadNumber='09'*/
order by orig.BudgetBookVersion desc



select 		left(orig.BudgetBookVersion, 4) BudgetYr
			, orig.ObjectCode
				, orig.DataValue as OrigEstimate
				, rev.DataValue as RevEstimate
				, final.DataValue as FinalAmount
from 		BudgetExpenditureAnalysis orig
left join	BudgetExpenditureAnalysis rev on rev.BudgetYear=orig.BudgetBookVersion
				and rev.ObjectCode=orig.ObjectCode
				and orig.DataVersion='ESTIMATE'
				and rev.DataVersion='REVISED'
left join	BudgetExpenditureAnalysis final on final.BudgetYear=orig.BudgetBookVersion
				and final.ObjectCode=orig.ObjectCode
				and orig.DataVersion='ESTIMATE'
				and final.DataVersion='ACTUAL'
where orig.BudgetYear=orig.BudgetBookVersion
/*
and 	orig.BudgetBookVersion='2021/22'
and		orig.ObjectCode='SALARIES'
*/
order by orig.BudgetBookVersion, orig.ObjectCode desc