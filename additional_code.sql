  SELECT DISTINCT A.listed_in, COUNT(B.type) AS Type_Count, COUNT(C.country) AS Country_Count
  FROM [dbo].[netflix_titles_category - netflix_titles_category] A
  INNER JOIN [dbo].[master_sheet_netflix] B ON A.show_id = B.show_id
  INNER JOIN [Netflix].[dbo].[netflix_titles_countries - netflix_titles_countries] C ON A.show_id = C.show_id
  GROUP BY A.listed_in
  
  OR
  
  SELECT Category.listed_in, COUNT(Master.type) AS TypeCount, COUNT(Countries.country) AS CountryCount
  FROM Netflix.[dbo].[netflix_titles_category - netflix_titles_category] Category
  JOIN Netflix.[dbo].[master_sheet_netflix] Master ON Category.show_id = Master.show_id
  JOIN Netflix.[dbo].[netflix_titles_countries - netflix_titles_countries] Countries ON Category.show_id = Countries.show_id
  GROUP BY Category.listed_in
