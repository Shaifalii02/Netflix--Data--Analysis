--question 3:•	Amount of Films Released Each Year (Filter By Genre)

  SELECT listed_in as movie_genre_list, release_year, COUNT(type) as movie_count
  FROM Netflix.dbo.master_sheet_netflix, Netflix.dbo.[netflix_titles_category - netflix_titles_category]
  WHERE Netflix.dbo.master_sheet_netflix.show_id = Netflix.dbo.[netflix_titles_category - netflix_titles_category].show_id AND type = 'Movie'
  GROUP BY listed_in, release_year
  ORDER BY listed_in ASC

  CREATE TABLE Netflix.dbo.question_3(
		movie_genre_list NVARCHAR(MAX),
		release_year int,
		movie_count int)

 INSERT INTO Netflix.dbo.question_3(movie_genre_list, release_year, movie_count)
  SELECT listed_in as movie_genre_list, release_year, COUNT(type) as movie_count
  FROM Netflix.dbo.master_sheet_netflix, Netflix.dbo.[netflix_titles_category - netflix_titles_category]
  WHERE Netflix.dbo.master_sheet_netflix.show_id = Netflix.dbo.[netflix_titles_category - netflix_titles_category].show_id AND type = 'Movie'
  GROUP BY listed_in, release_year
  ORDER BY listed_in ASC
