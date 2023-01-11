  --Question 1: Number of Movies and TV Shows Filtered by Number

  ----number of movies by genre
  SELECT DISTINCT listed_in  as movie_genre_list ,COUNT(type) as movie_count
  FROM Netflix.dbo.master_sheet_netflix, Netflix.dbo.[netflix_titles_category - netflix_titles_category]
  WHERE Netflix.dbo.master_sheet_netflix.show_id = Netflix.dbo.[netflix_titles_category - netflix_titles_category].show_id AND type = 'Movie'
  GROUP BY listed_in
  
  ----number of tv shows by genre
  SELECT DISTINCT listed_in  as tv_shows_genre_list ,COUNT(type) as tv_shows_count
  FROM Netflix.dbo.master_sheet_netflix, Netflix.dbo.[netflix_titles_category - netflix_titles_category]
  WHERE Netflix.dbo.master_sheet_netflix.show_id = Netflix.dbo.[netflix_titles_category - netflix_titles_category].show_id AND type = 'TV Show'
  GROUP BY listed_in

  --table to combine
  CREATE TABLE Netflix.dbo.question_1 (
		unique_genre_list NVARCHAR(MAX),
		movie_count int,
		tv_shows_count int )

----insert two select queries into the new table
INSERT INTO Netflix.dbo.question_1([unique_genre_list], [movie_count])
SELECT DISTINCT listed_in  as movie_genre_list ,COUNT(type) as movie_count
FROM Netflix.dbo.master_sheet_netflix, Netflix.dbo.[netflix_titles_category - netflix_titles_category]
WHERE Netflix.dbo.master_sheet_netflix.show_id = Netflix.dbo.[netflix_titles_category - netflix_titles_category].show_id AND type = 'Movie'
GROUP BY listed_in

--INSERT INTO Netflix.dbo.question_1([unique_genre_list], [tv_shows_count])
SELECT DISTINCT listed_in  as tv_shows_genre_list ,COUNT(type) as tv_shows_count
FROM Netflix.dbo.master_sheet_netflix, Netflix.dbo.[netflix_titles_category - netflix_titles_category]
WHERE Netflix.dbo.master_sheet_netflix.show_id = Netflix.dbo.[netflix_titles_category - netflix_titles_category].show_id AND type = 'TV Show'
GROUP BY listed_in

  --final
  SELECT * 
  FROM Netflix.dbo.question_1
  ORDER BY [unique_genre_list] ASC
