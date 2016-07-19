class Song < ApplicationRecord
    belongs_to :playlist

    def self.update_playlist (playlist)
        # playlist.songs.map do |song|
        #     Integer(song.score)
        #     puts (song.score.class)
        # end
        playlist.songs = playlist.songs.map.sort_by{ |x| Integer(x["score"]) }.reverse
        # new_order.each do |song|
        #     puts "#{song.score} - #{song.title}"
        # end
        # new_order.each_with_index do |song, index|
        #     playlist.songs.delete_if{ |h| h["id"] == index}
        #     playlist.songs << song
        # end
        playlist.songs.each do |song|
            puts "#{song.score} - #{song.title}"
        end
        return playlist.songs
    end
end

# playlist.songs.map! do |song|
#     if Integer(song.score) > Integer(song.score)
#         playlist.songs.unshift(song)
#     else
#         playlist.songs.push(song)
#     end
# end
