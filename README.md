# Supper Club
#### An App that matches a Host with diverse & interesting party guests

## User Stories

* Users can view a list of dinner parties and chose to attend one as a guest.
    * Dinner parties can be sorted by date, location, and/or theme

* Users can chose to host (create) a new dinner party
    * The host can choose a location for a dinner party
    * The host can choose a theme for a dinner pary

## Models
* User Model
    * Can participate as a Host and/ or Guest
    * Has host reviews
    * Has guest reviews
    * Has an occupation
    * Has an age
    * Has other descriptive attributes: List here.
* Diner Party
    * Has a date
    * Has a host
    * Can have many guests
    * Has a location
    * Has a theme
    * Has a price, or cost per guest
    * Has a size attribute: Maximum guests?
* Locations
    * Has a description of the location
* Themes/Cuisine
    * Has a description of the Theme or Cuisine style
* Reviews
    * Associated with a user
    * Authored by another user (guests can review hosts, and hosts can review guests)




