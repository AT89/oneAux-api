#OneAux rails API

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

this is hosted on Heroku
