module SongsHelper

  def artist_select(song, f)
    if song.artist_id && Artist.exists?(song.artist_id)
      song.artist.name
    else
      f.collection_select :artist_id, Artist.all, :id, :name
    end
  end

end
