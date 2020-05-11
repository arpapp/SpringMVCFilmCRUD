# SpringMVCFilmCRUD - Week 7 Skill Distillery


### Overview (what the project is, how to do it, how to run it)
- This program allows the user to access and modify films in a pre-populated database.

- When the homepage is displayed, the user can search a film with it's id or a keyword. The user also has the option to add a film.

- When a user searches a film with their id, all film fields are displayed, including the language and category. When the user retrieves this film data, they have the option to edit or delete that film.

- When a user searches a film by keyword, all films are displayed that match the keyword in their title or description. When this data is retrieved, the user can choose to edit or delete any film on the list.

- There are films that the user will not be able to delete, but the user will be informed if this occurs. The user will only be able to delete films that were added by them.

This program has one controller, a database accessor object, film and actor entities and eight JSP files. It utilizes the Spring Tool Suite for servlet mapping. Gradle was used for dependency management.


#### DAO
The DAO implementation class works directly with the database in order to make film and actor objects. The DAO finds a film by the ID by taking in an ID the user inputted, then pulling the data from the film database that corresponds with the ID. This also takes the category name as well as language name by using SQL commands - JOIN.

When the user inputs data to create a film, the DAO will use SQL command INSERT to make a new film and put it in the database. The ID is assigned with Generated Keys method.

When the user chooses to delete a film, SQL command DELETE is used. The method finds the film with the film ID. With this, the user will only be able to delete a film that was searched or just added as the ID will be passed on to this method.

The update film method will use the SQL command UPDATE. Like delete film, a user can only update a film when the film has been searched as well as when it has been added. The film ID is passed to this method as well.

When finding films with search keyword, the SQL command SELECT is used as this is just reading films from the database. The user will also have the option to edit or delete the film searched.

#### Controller
The controller relays database information retrieved by the DAO and passes it to the corresponding JSPs in order for the information to be viewed.

The controller has an instance of the Film DAO and thus is able to call the DAO methods and retrieve database information. This information is integrated into Model and View Objects that are then passed to JSPs.

The Spring MVC Tool Suite allows for the use of many different annotations in order to build servlet mapping.

The Controller annotation was used to flag the file that contains servlet mapping.

The Autowired annotation was used so that Spring can automatically instantiate the DAO object.

The Request Mapping annotation was used to declare paths and also obtain params when necessary.

#### JSPs
JSP files were used over other formats such as HTML as the information being displayed is dynamic and it understands Java Language.

Some JSPs were used to display forms that allowed the user to modify data. The other JSPs displayed results based on the user's action (such as the difference between displaying one film or a list of film).


### Technologies Used
- Spring Tool Suite
- Java
- Terminal Commands
- GitHub/Git
- Atom
- MAMP
- Gradle
- SQL
- MySQL
- ERD


### Lessons Learned
- This project helped increase understanding of SQL statements and retrieving information from the database.
- This project was a good exercise in learning how to construct the controller and relate information between the database and the webpage.
- This helped increase understanding of how JSPs worked and manipulate information based on how we wanted it to be displayed.
- Communication and collaboration with team members - it is important to constantly be in communication to avoid merge conflicts.
- Although roles were split up based on front end, middle (controller) and back end, all team members were in each other's designated roles in order to integrate the application together.


### Personal Stretch Goals
- Setting a category for new films inserted by the user
- Successfully implementing the post/redirect/get design pattern
- Consolidating the result JSPs into less or even one file
