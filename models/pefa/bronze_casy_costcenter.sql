

select  KSTJahr as CostcenterYear, 
            KSTNr as CostcenterNo, 
            BuchSperre as CostcenterBookingBlock, 
            BuchSperreAb as CostcenterBookingBlockFrom, 
            BuchSperreBis CostcenterBookingBlockTo, 
            KSTBez as CostcenterName, 
            KSTKlasse as CostcenterClass, 
            PersKurzZeich as CostcenterResponsble1, 
            PersKurzZeich2 as CostcenterResponsble2, 
            PersKurzZeich3 as CostcenterResponsble3, 
            PersKurzZeich4 as CostcenterResponsble4, 
            StaoNr as CostcenterLocationNo,
            Stufe as CostCenterLevel 
    from {{ source('Pefa_hbue', 'casy_kststamm') }} 
