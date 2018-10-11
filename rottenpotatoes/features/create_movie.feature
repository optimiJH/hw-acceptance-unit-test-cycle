Feature: search for movies by director
 
  As a Rottentomato user
  So that I can properly mange the list of movies
  I want to be able to create a movie
 
Background: movies in database
 
  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |
 
Scenario: creating a new movie
  When I am on the RottenPotatoes home page
  And  I follow "Add new movie"
  And I fill in "Title" with "The Men Movie"
  And I select "PG-13" from "Rating"
  And I select "2021" from "movie_release_date_1i"
  And I select "June" from "movie_release_date_2i"
  And I select "8" from "movie_release_date_3i"
  And  I press "Save Changes"
  Then I should see "The Men Movie was sucessfully created"
  And I should see "PG-13"
  And I should see "2021-06-08"