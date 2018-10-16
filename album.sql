select album.title, track.name as album
from album
  join artist using(artist_id)
  left join track using(album_id)
where artist.name = 'Iron Maiden';
