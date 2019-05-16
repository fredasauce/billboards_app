class AddSongToBillboardAndArtist < ActiveRecord::Migration[5.2]
  def change
    add_reference :billboards, :song, foreign_key: true
    add_reference :artists, :song, foreign_key: true
  end
end
