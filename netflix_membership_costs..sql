  SELECT Country, Total_Library_Size/((Cost_Per_Month_Basic + Cost_Per_Month_Standard + Cost_Per_Month_Premium)/3) as Library_Size_Per_Dollar_Avg
  FROM netflix.dbo.netflix_price
  ORDER BY Total_Library_Size/((Cost_Per_Month_Basic + Cost_Per_Month_Standard + Cost_Per_Month_Premium)/3) DESC

  SELECT Country, No_of_Movies, No_of_TV_Shows, (No_of_Movies + No_of_TV_Shows) as Total_Library
  FROM netflix.dbo.netflix_price
  ORDER BY No_of_TV_Shows DESC, No_of_Movies DESC

  SELECT Country, ROUND(((Cost_Per_Month_Basic + Cost_Per_Month_Standard + Cost_Per_Month_Premium)/3), 2) as Avg_Membership_cost
  FROM netflix.dbo.netflix_price
  ORDER BY ((Cost_Per_Month_Basic + Cost_Per_Month_Standard + Cost_Per_Month_Premium)/3) DESC
