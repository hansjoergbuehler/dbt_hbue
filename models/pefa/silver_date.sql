SELECT [date], DATEPART(year, [date]) AS Year, DATEPART(qq, [date]) AS Quarter, 'Q' + CONVERT(VARCHAR, DATEPART(qq, [date])) AS QuarterName, CONVERT(varchar, DATEPART(year, [date])) + ' Q' + CONVERT(VARCHAR, DATEPART(qq, [date])) AS QuarterWithYear, 
             (DATEPART(month, [date])) AS Month, CONVERT(varchar, DATEPART(year, [date])) + '-' + (CONVERT(VARCHAR, DATEPART(month, [date]))) AS MonthWithYear, (DATEPART(wk, [date]) )
             AS CalenderWeek, 'CW' + (CONVERT(VARCHAR, DATEPART(wk, [date]))) AS CalenderWeekName, CONVERT(varchar, DATEPART(year, [date])) + ' CW' + (CONVERT(VARCHAR, DATEPART(wk, [date]))) 
             AS CalenderWeekWithYear, (DATEPART(dd, date)) AS DayOfMonth, case when year(getdate()) = year(date) then 'Current Year' else cast(year(date) as varchar) end as SelectYear
FROM  {{source("Pefa_hbue","date_table")}}
