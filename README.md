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
- [ ] Modify the search form in the header of the application.html.erb layout to use a form_tag, which wraps the search form input. The form needs to submit to the ideas#index route. Remember to use an ERB expression, not a scriptlet, to declare the form_tag. Ensure that the form is rendered with method="GET".
- [ ] Apply the correct class from the original static form to the form tag.
- [ ] Use a text_field_tag helper to render the text input for the form. Give it no initial value and a name of 'q'. (q is often used for the name of a search term, such as at google.com)
- [ ] Apply the correct class and placeholder attributes that were included in the original static input.
- [ ] Use a button_tag helper to render the submit button for the form, applying the correct CSS classes as button_tag parameters.
- [ ] Extract the whole search form to a partial named _search_form.html.erb within app/views/application.
