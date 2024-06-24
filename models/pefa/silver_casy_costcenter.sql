with
    casy_costcenter_lastyear as
        (
        select CostcenterNo, max(CostcenterYear ) as CostcenterYear
        from {{ ref('bronze_casy_costcenter') }} 
        where CostcenterYear <= year(getdate())
        group by CostcenterNo
        ),
    casy_costcenter_lastyear_details as
        (
            select c.* 
            from {{ ref('bronze_casy_costcenter') }} c join casy_costcenter_lastyear lc on c.CostcenterNo = lc.CostcenterNo and c.CostcenterYear = lc.CostcenterYear


        )

    
select 
    c.CostcenterNo, 
    c.CostcenterYear as CostcenterYearHistorical, 
    lc.CostcenterYear, 
    c.CostcenterName as CostcenterNameHistorical, 
    lc.CostcenterName, lc.CostcenterBookingBlock, 
    lc.CostcenterBookingBlockFrom, 
    lc.CostcenterBookingBlockTo, 
    lc.CostcenterClass, 
    lc.CostCenterLevel, 
    c.CostcenterLocationNo, 
    lc.CostcenterResponsble1 , 
    lc.CostcenterResponsble2, 
    lc.CostcenterResponsble3, 
    c.CostcenterResponsble4 
from {{ ref('bronze_casy_costcenter') }} c 
    left outer join casy_costcenter_lastyear_details lc 
    on c.CostcenterNo = lc.CostcenterNo 


