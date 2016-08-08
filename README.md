#OneAux rails API
This API stores all the information from an Added song to the playlist JSON. It keeps all the relevant information on the song including duration, artist, song name and also who added the song etc. We wanted to use duration to automate the adding songs to the Spotify playlist.

##How it was made in 5minutes
Using Rails 5.00, we created the rails api by using --api  and wiht postgresql handling the sql calls
```
rails new oneAux-API --api -d postgresql
```
and then just using 
```
rails scaffold generate playlists
rails scaffold generate songs 
```
and linking then nesting them together, creating the tables and a little bit more configuring and our Rails server is up!

this is hosted on Heroku http://oneaux.herokuapp.com/

OneAux github: https://github.com/AT89/oneaux



