# My Bucket List
Simple Ruby on Rails app to create for the EPFL EXTS tutorial.

## Ruby in Views: Exercices

### Tasks 1
- [X] Add static style guide to Rails app.
- [X] Generate views for the style guide in a new controller. Name the controller styles and create it with these views: atoms, molecules, and organisms.
- [X] Generate a view for the home page in a separate controller. Name the controller home and create it with this view: index.
- [X] In the application.html.erb layout, add a normal stylesheet link to the style guide CSS files /css/main.css and /css/styleguide.css, which we added to the public/ folder previously.
- [X] Attached to this unit in the resources section is a .zip file containing a file called homepage.html. Download and uncompress the .zip then open the homepage.html file in Atom. It includes HTML comments to indicate which parts within the <body> tag are for the application.html.erb layout and which are for the home/index.html.erb view. Extract these sections and put them into the appropriate places in application.html.erb and the home/index.html.erb view. Be careful not to remove the <%= yield %> tag in application.html.erb!
- [X] For each of the view files created in task 1 for the style guide, replace its contents with the contents from the matching static HTML file within the public/ folder. For each view, this should be the "main" element and it's contents, within <body>.

### Tasks 2
- [X] Extract a partial for each of these molecules in the molecules view of the style guide.
  - Idea card, named _idea_card. This will contain the <div class="card"> element as the root.
  - Logo, named _logo. This will contain the <div class="logo"> element as the root.
  - Negative logo, named _negative_logo. This will contain the <div class="sg-dark-bg"> element as the root.
  - Search, named _search_control. This will contain the <div class="input-inline"> element as the root.
- [X] Use each of the partials to replace the inline HTML in the molecules view, so that the contents of the molecules view are shorter.
- [X] Use a reference to the _idea_card partial from 1.1 above to replace the inline three instances in the home/index view of the idea card component.

### Tasks 3
- [X] Find the Molecules link in the styles/atoms view and replace it with an ERB expression tag that uses a link_to helper method.
- [X] Find the Organisms link in the styles/atoms view and replace it with an ERB expression tag that uses a link_to helper method.
- [X] Find the Atoms and Organisms links in the styles/molecules view and replace them with ERB expression tags that use a link_to helper method.
- [X] Find the Atoms and Molecules links in the styles/organisms view and replace them with ERB expression tags that use a link_to helper method.
- [X] Find the root link, /, in the application layout file, app/views/layouts/application.html.erb and replace it with an ERB expression tag that uses a link_to helper method. HINT: you will need to use the #html_safe method on the String for the link contents to make the title render correctly

### Tasks 4
- [X] From the styles/atoms view, extract a partial for each of the following. Make use of the button_tag helper and also use a partial parameter for the button text. There's no need to introduce a partial parameter for class: in this task.
    - Button
    - Link button
    - Primary button
    - Warning button
- [X] Modify the styles/_idea_card.html.erb partial so that the title can be passed in as a partial parameter.
- [X] In styles/organisms, extract a partial for the "prompt" section of the input forms, that contains everything within the <div class="prompt"> element. Introduce a partial parameter so that it can be reused for all of the forms in the styles/organisms view.

### Tasks 5
- [X] The styles#organisms view contains an unordered list of Idea cards. The first two cards make use of the _idea_card partial. Make all instances of the Idea card use the _idea_card partial.
- [X] Introduce an Array that contains each of the titles for the Idea cards. Loop over this Array in order to render the cards instead of explicitly rendering each card. Change the titles of the cards to whatever you choose if you wish.
- [X] Move the _idea_card partial to the app/views/application/ folder. Create the folder app/views/application/ if it doesn't already exist.
- [X] Make use of the _idea_card within home#index for the first Idea card in the list of three.
- [X] Introduce an Array that contains Strings for titles of each card. Iterate over the Array in order to render an Idea card for each title. Titles can be whatever you choose.

### Tasks 6
- [X] Extract a partial for the list item within the secondary navigation of styles#atoms. Make the partial reusable by introducing two local parameters, title and uri.
- [X] Make use of the new partial in the atoms.html.erb, molecules.html.erb and organisms.html.erb views to render the link for each of these views, setting the title and uri correctly.
- [X] Introduce an if conditional in this new partial. The conditional will control whether the current class is added to the anchor element within the list item. Use a boolean partial parameter current to control the conditional expression.
- [X] Set the current parameter on the appropriate partial in each of the three views so that the currently visible section is highlighted in each view e.g. "Atoms" is the highlighted menu item in atoms.html.erb.

## Routing and controlling requests: Exercices

### Tasks 1
- [X] Generate an empty controller named Ideas without any associated views or routes.
Manually create the necessary route. The route needs to accept the path ideas/index, and it needs to map that request to the index action in the IdeasController.
- [X] Create an index action within IdeasController. This action needs to render the default view of ideas/index.html.erb.
- [X] Create the ideas/index.html.erb view. Check that the new view can loaded by running your application and loading the URL http://localhost:3000/ideas/index in your browser.
- [X] Change the idea/index.html.erb view contents to use the HTML in the search-results-view.html file attached to the unit resources. Check your progress by loading the URL http://localhost:3000/ideas/index in your browser.
- [X] In the ideas/index.html.erb view, we can use the app/views/application/_idea_card.html.erb partial to replace the static Idea card HTML from the template. Iterate through an Array of three Strings in order to render the _idea_card partial three times. The Strings can have any values that you like.

### Tasks 2
- [X] Modify the search form in the header of the application.html.erb layout to use a form_tag, which wraps the search form input. The form needs to submit to the ideas#index route. Remember to use an ERB expression, not a scriptlet, to declare the form_tag. Ensure that the form is rendered with method="GET".
- [X] Apply the correct class from the original static form to the form tag.
- [X] Use a text_field_tag helper to render the text input for the form. Give it no initial value and a name of 'q'. (q is often used for the name of a search term, such as at google.com)
- [X] Apply the correct class and placeholder attributes that were included in the original static input.
- [X] Use a button_tag helper to render the submit button for the form, applying the correct CSS classes as button_tag parameters.
- [X] Extract the whole search form to a partial named _search_form.html.erb within app/views/application.

### Taks 3
- [X] In the index action of the IdeasController, assign the value for params[:q] to an instance variable @search_term.
- [X] Output the search term to the Rails server using logger.info() as part of the string "Search completed using #{@search_term}.".
- [X] Output the search term on the index.html.erb view in a paragraph alongside the text "Results for ".

### Tasks 4
- [X] Within the IdeasController, add two actions after the index action, one called new and one called create.
- [x] Create two new routes, one GET route that directs to the ideas#new controller action and one POST route that directs to the ideas#create controller action.
- [x] Create a new view for the ideas#new action controller, using the default view name for that action. Use the contents of the new-idea-form.html file attached as a resource to this unit for the view content.
- [x] Modify the <form> element to use the form_tag helper. The form should use a POST method and submit to the ideas#create route. Check that the input for the idea title has the name title.
- [X] Make the create action redirect to the ideas_index. Check that the title parameter is being output as expected in the rails server terminal`.

## Models introduction

### Tasks 1
- [X] Create an Idea model with one attribute, title, which is a string, using the rails generate model command.  title and string must be lowercase when used in the generator command.
- [X] Use the rails console to create three instances of Ideas, and save them to the database. Remember that you will be able to use Idea.all to look at the instances that have been stored in the database, and #destroy! on any particular instance to delete it from the database.
- [X] Within the index action of the IdeasController, retrieve all of the Ideas and assign them to an instance variable @ideas.
- [X] Within the ideas/index.html.erb view, replace the static Idea titles with the @ideas collection. Iterate over this collection using using .each in order to render the _idea_card.html.erb partial once for each Idea instance.
- [X] Pass the Idea#title attribute for each Idea into the _idea_card.html.erb partial as the title partial parameter.

### Tasks 2
- [X] Modify the form inputs in the app/views/ideas/new.html.erb view to make use of the text_field_tag and button_tag helpers. Make sure that the name of the input is 'title', otherwise it will be more difficult to hook the form up in the next steps! If you need to refresh how to use these helpers, documentation for each can be found on the form tag helper documentation.
- [X] Within the create action of the IdeasController, create a new instance of the Idea model. Use the :title parameter from the params hash to set the Idea#title attribute for this instance and then save it to the database.
- [X] Create three new Ideas using the new form, which will be accessible from http://localhost:3000/ideas/new, and check that they are displayed correctly on the search results page, http://localhost:3000/ideas/index.

### Tasks 3
- [X] Generate a controller for our account area called AccountController.
- [X] Manually add a GET route for /account/ideas to config/routes.rb, along with a controller action in the AccountController and a default view for the route, app/views/account/ideas.html.erb.
- [X] Use the attached static HTML content for the content of the ideas.html.erb view.
- [X] Make the HTML within the ideas.html.erb view dynamic by retrieving all Idea instances in the controller action, assigning them to an instance variable and then iterating over them to dynamically generate the HTML for each one.
- [X] Extract a partial that can be used to render the "editable Idea card" in the ideas.html.erb view.
- [X] Replace the static Create Idea link button with a dynamically generated link using the link helper and a path helper that links to the idea#new route.
- [X] In the header of the application layout (app/views/layouts/application.html.erb), change the "Sign Up" link to say "Account", and use a link helper and path helper to link this text to the new /account/ideas view.

### Tasks 4
- [X] Generate a migration that will add the attribute done_count as an integer to the Idea model in the My Bucket List application. The migration name will therefore be AddDoneCountToIdea.
- [X] Update the application database schema.
- [X] Include the done_count attribute in the ideas/new form and set the value for the done_count attribute in the create action of the IdeasController.
- [X] Use the done_count attribute to complete the display value for the "done this" text in the _idea_card.html.erb partial. A new partial parameter will be needed so don't forget to update all usages of the partial!
- [X] Generate a migration that will add the attribute photo_url as a string to the Idea model in the My Bucket List application.
- [X] Include the photo_url attribute in the ideas/new form and set the value for the photo_url attribute in the create action of the IdeasController.
- [X] Use the photo_url attribute in conjunction with the image_tag helper to render the <img> element in the _idea_card.html.erb partial.
