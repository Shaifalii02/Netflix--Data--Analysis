-- question 4:•	How many Cast Members in Hükümet Kadin
SELECT title, COUNT(cast) as count
FROM Netflix.dbo.master_sheet_netflix, Netflix.dbo.[netflix_titles_cast - netflix_titles_cast]
WHERE Netflix.dbo.master_sheet_netflix.show_id = Netflix.dbo.[netflix_titles_cast - netflix_titles_cast].show_id and title = 'Hükümet Kadin'
GROUP BY title

SELECT title, cast as cast_member
FROM Netflix.dbo.master_sheet_netflix, Netflix.dbo.[netflix_titles_cast - netflix_titles_cast]
WHERE Netflix.dbo.master_sheet_netflix.show_id = Netflix.dbo.[netflix_titles_cast - netflix_titles_cast].show_id and title = 'Hükümet Kadin'
GROUP BY title, cast

CREATE TABLE Netflix.dbo.question_4(
	title NVARCHAR(MAX),
	cast_member NVARCHAR(MAX))

INSERT INTO Netflix.dbo.question_4(title, cast_member)
SELECT title, cast as cast_member
FROM Netflix.dbo.master_sheet_netflix, Netflix.dbo.[netflix_titles_cast - netflix_titles_cast]
WHERE Netflix.dbo.master_sheet_netflix.show_id = Netflix.dbo.[netflix_titles_cast - netflix_titles_cast].show_id and title = 'Hükümet Kadin'
GROUP BY title, cast
