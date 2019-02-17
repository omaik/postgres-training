/*
 Lateral join performs nested query for every unique value of the column referred in that nested query.
 For this example it performs nested query for every album and selects all tracks for them.
*/

select artist.name, album.title, string_agg(track.name, ' | ') as tracks
from artist
inner join album using(artist_id)
inner join lateral (
  select * from track
  where album_id = album.album_id
) track on true
where artist.name = 'Iron Maiden'
group by artist.name, album.title;



-- Usage in more complicated example
-- Select all artists playing rock, metal or alternative and count of songs for each genre

-- select artist.name as artist_name, genre.name as genre_name, count(track.*) as tracks_count
-- from (select * from genre where name in ('Rock', 'Metal', 'Alternative & Punk', 'Heavy Metal')) as genre
-- inner join lateral(
--   select * from track
--   where genre_id = genre.genre_id
-- ) as track on true
-- inner join album on track.album_id = album.album_id
-- inner join artist on album.artist_id = artist.artist_id
-- group by artist.name, genre.name
-- order by artist.name;
