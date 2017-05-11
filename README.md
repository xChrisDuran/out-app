# README

OUT APP is a social app built to bring people with similar interests together. Out is originally currated for the LGBTQ community who seek to promote a healthy lifestyle. Rather than meeting at a bar, individuals are able to post "moments" (events) for others to join them. 

# System Dependancies and Database
OUT APP is built in ruby on rails and uses a PostgreSQL as a database. OUT APP uses javascript to allow a Facebook login.

# Road Blocks
I had issues with user associations to moments. Users are able to post a moment and other users are able to join them if they wish. The association is a join table and it caused a lot of confusion for me. 
I also had issues calling methods I created due to their association to user.
Schemas gave me issues and i had to remove certain pieces to the schema and add the right attribute types.

# What I will work on
I want to be able to allow users to join a moment and incorporate the roght associations so that a user can select moments that they're interested in. 
I also want to incorporate a google map that drops a pin on the location of the "moment." 
Users should be able to update their moment and view their and use geocoder to gove others the location of their moment.

# What I learned
I learned how to incorporate devise and associate it's methods to what a user can and cannot see according to authentication. 
I learned how to incorporate a Facebook login and created a Facebook developer account.
I built my first solo full scale Ruby on Rails app.

