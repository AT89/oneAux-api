#OneAux rails API
This API stores all the information from an Added song to the playlist JSON. It keeps all the relevant information on the song including duration, artist, song name and also who added the song etc. We wanted to use duration to automate the adding songs to the Spotify playlist.

##How it was made in 5minutes
Using Rails 5.00, we created the rails api by using --api  and wiht postgresql handling the sql calls
```
rails new oneAux-API --api -d postgresql
```
and then just using 
```
rails generate scaffold playlists
rails generate scaffold songs 
```

Use the gem rack-cors to let your rails talk to your Front-end app! 

https://github.com/cyu/rack-cors#rails

Install the gem:
```
gem install rack-cors
```
Or in your Gemfile:
```
gem 'rack-cors', :require => 'rack/cors'
```



and linking then nesting them together, creating the tables and a little bit more configuring and our Rails server is up!

this is hosted on Heroku http://oneaux.herokuapp.com/

OneAux github: https://github.com/AT89/oneaux



