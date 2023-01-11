-- question 5:•	Amount of Each Ratings (Filter by Genre)
SELECT DISTINCT listed_in as genre, rating, COUNT(rating)
FROM Netflix.[dbo].[netflix_titles_category - netflix_titles_category], Netflix.[dbo].[master_sheet_netflix]
WHERE Netflix.[dbo].[netflix_titles_category - netflix_titles_category].show_id = Netflix.[dbo].[master_sheet_netflix].show_id
GROUP BY listed_in, rating
ORDER BY listed_in ASC

CREATE TABLE Netflix.dbo.question_5(
		genre NVARCHAR(MAX),
		rating NVARCHAR(MAX),
		count INT)

INSERT INTO Netflix.dbo.question_5(genre, rating, count)
SELECT DISTINCT listed_in as genre, rating, COUNT(rating)
FROM Netflix.[dbo].[netflix_titles_category - netflix_titles_category], Netflix.[dbo].[master_sheet_netflix]
WHERE Netflix.[dbo].[netflix_titles_category - netflix_titles_category].show_id = Netflix.[dbo].[master_sheet_netflix].show_id
GROUP BY listed_in, rating
ORDER BY listed_in ASC



		
