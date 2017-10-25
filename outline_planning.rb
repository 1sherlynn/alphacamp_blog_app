Sherlynn_Simple Blog Application Outline Story (Model name: Article)

Part 1: 
User would like to create a new article. User enters URL and browswer renders a form for user to enter. 
User is then able to submit and view the article he just typed. User is also able to see the list of all articles. 
	Required: 
	- Route to map to #new: HTTP verb: GET, URI: /articles/new OR new_article_path 
	route maps HTTP requests to a Controlleraction via the HTTP verb and the URI of the HTTP request
	- Action: new
	- View: new.html.erb
	= Form: with title, author and text parameters
	- Form method: to specify 'URL: articles_path' to point the form to articles index page 
	via POST request 
	- Action: create --> maps to the Article model which saves article entry into database
	- Model and migration files
	- User is redirected to the show page and is able to see the Article he just typed
	- Route: GET request via articles_path
	- Action: show


Part 2: 
User then decides he made an error and would like to edit the article. 
	Required: 
	- show.html.erb page should have links to the edit.html.erb page and 
		index.html.erb page
	- When user clicks on 'edit', the edit.html.erb is rendered to show 
		the form with the previously keyed in information
	- User updates the form and click button to 'update'
	- This triggers a PUT request to the controller and the 'update' action 
	- Database has to be updated 
	- User is redirected to show.html.erb to view the updated article 

Part 3: 
User is satisfied and makes no changes. Decides to go the the index 
page to view all article entries.
	Required: 
	- index.html.erb page listing all articles available
	- display article content: title, author, text, timestamp
	- link to create new article
	- links to edit, show and destroy current articles

Part 4: 
User is fickle. Decided not to share his opinions with the world. 
Decided to delete article.
	Required: 
	- 'destroy' action to delete article from database

































