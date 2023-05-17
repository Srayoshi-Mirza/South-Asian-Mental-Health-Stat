--Select *
--From Mental_Health..AllMentalHealthDisorder$
--order by 1,2

--Select *
--From Mental_Health..SucideRatevsDepressiveDisorder
--order by 1,2 


--Select *
--From Mental_Health..BothGenderDepressiveDisorders
--order by 1,2 

--First Visualization on the Map

Select
	Entity,
	Year,
	[Schizophrenia],
	[Bipolar disorder],
	[Eating disorders],
	[Anxiety disorders],
	[Drug use disorders],
	[Depressive disorders],
	[Alcohol use disorders]
From Mental_Health..[AllMentalHealthDisorder$]
where Entity in ('Bangladesh', 'Bhutan','India', 'Maldives', 'Nepal','Pakistan','Sri Lanka', 'Afghanistan')


--Second Visualization in Bangladesh Statistics

Select
	Entity,
	Year,
	[Schizophrenia],
	[Bipolar disorder],
	[Eating disorders],
	[Anxiety disorders],
	[Drug use disorders],
	[Depressive disorders],
	[Alcohol use disorders]
From Mental_Health..[AllMentalHealthDisorder$]
Where Entity like '%Bangladesh%'
order by 1,2


--Third Visualization in Bangldesh on Dipressive Disorder
Select
	Entity,
	Year,
	[Prevalence - Depressive disorders - Sex: Both - Age: Age-standar] as DipressiveDisorder
From Mental_Health..BothGenderDepressiveDisorders
Where Entity like '%Bangladesh%'
order by 1,2

--fourth Visualization in Bangladesh Sucide cause by mental health
Select
	Entity,
	Year,
	[Population (historical estimates)] as Total_Population,
	[Prevalence - Depressive disorders - Sex: Both - Age: Age-standar] as Prevalance_Depressive_Disorder,
	[Deaths - Self-harm - Sex: Both - Age: Age-standardized (Rate)] as SucideRate
From Mental_Health..SucideRatevsDepressiveDisorder
Where Entity like '%Bangladesh%' and [Prevalence - Depressive disorders - Sex: Both - Age: Age-standar] is not Null
order by 1,2
