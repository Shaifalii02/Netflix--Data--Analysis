--Question 2: •	Average Movie Duration (Filter By Genre)

SELECT DISTINCT listed_in  as movie_genre_list, AVG(duration_minutes) as average_movie_time
FROM Netflix.dbo.master_sheet_netflix, Netflix.dbo.[netflix_titles_category - netflix_titles_category]
WHERE Netflix.dbo.master_sheet_netflix.show_id = Netflix.dbo.[netflix_titles_category - netflix_titles_category].show_id AND type = 'Movie'
GROUP BY listed_in

Create table for average movie duration
CREATE TABLE Netflix.dbo.question_2 (
	movie_genre_list NVARCHAR(MAX),
	average_movie_time int )

INSERT INTO Netflix.dbo.question_2([movie_genre_list], [average_movie_time])
SELECT DISTINCT listed_in  as movie_genre_list, AVG(duration_minutes) as average_movie_time
FROM Netflix.dbo.master_sheet_netflix, Netflix.dbo.[netflix_titles_category - netflix_titles_category]
WHERE Netflix.dbo.master_sheet_netflix.show_id = Netflix.dbo.[netflix_titles_category - netflix_titles_category].show_id AND type = 'Movie'
GROUP BY listed_in

SELECT * 
FROM Netflix.dbo.question_2
ORDER BY [movie_genre_list] ASC
