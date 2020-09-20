# My Bucket List
Simple Ruby on Rails app to create for the EPFL EXTS tutorial.

## Tasks 1
- [X] Add static style guide to Rails app.

- [X] Generate views for the style guide in a new controller. Name the controller styles and create it with these views: atoms, molecules, and organisms.

- [X] Generate a view for the home page in a separate controller. Name the controller home and create it with this view: index.

- [X] In the application.html.erb layout, add a normal stylesheet link to the style guide CSS files /css/main.css and /css/styleguide.css, which we added to the public/ folder previously.

- [X] Attached to this unit in the resources section is a .zip file containing a file called homepage.html. Download and uncompress the .zip then open the homepage.html file in Atom. It includes HTML comments to indicate which parts within the <body> tag are for the application.html.erb layout and which are for the home/index.html.erb view. Extract these sections and put them into the appropriate places in application.html.erb and the home/index.html.erb view. Be careful not to remove the <%= yield %> tag in application.html.erb!

- [X] For each of the view files created in task 1 for the style guide, replace its contents with the contents from the matching static HTML file within the public/ folder. For each view, this should be the "main" element and it's contents, within <body>.

## Tasks 2
- [X] Extract a partial for each of these molecules in the molecules view of the style guide.
  - Idea card, named _idea_card. This will contain the <div class="card"> element as the root.
  - Logo, named _logo. This will contain the <div class="logo"> element as the root.
  - Negative logo, named _negative_logo. This will contain the <div class="sg-dark-bg"> element as the root.
  - Search, named _search_control. This will contain the <div class="input-inline"> element as the root.
- [X] Use each of the partials to replace the inline HTML in the molecules view, so that the contents of the molecules view are shorter.
- [X] Use a reference to the _idea_card partial from 1.1 above to replace the inline three instances in the home/index view of the idea card component.

## Tasks 3
- [X] Find the Molecules link in the styles/atoms view and replace it with an ERB expression tag that uses a link_to helper method.
- [X] Find the Organisms link in the styles/atoms view and replace it with an ERB expression tag that uses a link_to helper method.
- [X] Find the Atoms and Organisms links in the styles/molecules view and replace them with ERB expression tags that use a link_to helper method.
- [X] Find the Atoms and Molecules links in the styles/organisms view and replace them with ERB expression tags that use a link_to helper method.
- [X] Find the root link, /, in the application layout file, app/views/layouts/application.html.erb and replace it with an ERB expression tag that uses a link_to helper method. HINT: you will need to use the #html_safe method on the String for the link contents to make the title render correctly

## Tasks 4
- [X] From the styles/atoms view, extract a partial for each of the following. Make use of the button_tag helper and also use a partial parameter for the button text. There's no need to introduce a partial parameter for class: in this task.
    - Button
    - Link button
    - Primary button
    - Warning button
- [X] Modify the styles/_idea_card.html.erb partial so that the title can be passed in as a partial parameter.
- [ ] In styles/organisms, extract a partial for the "prompt" section of the input forms, that contains everything within the <div class="prompt"> element. Introduce a partial parameter so that it can be reused for all of the forms in the styles/organisms view.
