# Supper Club
#### An App that matches a Host with diverse & interesting party guests

## User Stories

* Chefs can do the following:
    * Create a "Table" using the following
      * Chose a Location
      * Chose a Cusine/Style for the table
      * Set a maximum number of guests
      * set a price per guest
* Diner/Guests can do the following:
    * Attend a Dinner/Table
    * View a list of Dinners/Tables
        * List can be sorted
        * LIst can be searched
    *Can write a review
    * Keeps a history of Dinner Parties/Tables
    * Maybe invites other guests
    * Maybe proposes new Tables

## Models
* User Model
    * name
    * user_name
    * pasword
    * Has many reviews
* Diner Party
    * Has a date
    * Has a host
    * Has a location
    * Has a cuisine
    * Has a price, or cost per guest
    * Has a size attribute: Maximum guests?
    * Has many DinnerGuests
* Reviews
    * Has a dinner party id
    * Has review text
    * Has star rating

* Dinner Guest
    * Has a user id
    * Has a party id
    



