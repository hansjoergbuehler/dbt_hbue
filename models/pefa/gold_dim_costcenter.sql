select cast(CostcenterNo as varchar) + '_' + cast(CostcenterYearHistorical as varchar) as CostcenterID, * 
from {{ ref('silver_casy_costcenter') }}