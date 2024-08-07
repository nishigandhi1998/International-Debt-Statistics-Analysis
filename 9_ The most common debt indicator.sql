#  9_ The most common debt indicator

/*
China has the highest amount of debt in the long-term debt (DT.AMT.DLXF.CD) category. 
This is verified by The World Bank. It is often a good idea to verify our analyses like this 
since it validates that our investigations are correct.

We saw that long-term debt is the topmost category when it comes to the average amount of debt. 
But is it the most common indicator in which the countries owe their debt? Let's find that out.*/


select * from international_debt;

select indicator_code,
indicator_name,
count(indicator_code) as indicator_count
	from international_debt
	group by indicator_code , indicator_name
	order by indicator_count ASC; --HERE THERE IS DESC I HAVE DOEN CHANGES TO DESC TO ASC
