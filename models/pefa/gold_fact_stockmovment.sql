select cast(CostcenterNo as varchar) + '_' + cast(year(Date) as varchar) as CostcenterID, *
from {{ ref('silver_casy_stockmovement') }}
-- where not( CostcenterNo is null)