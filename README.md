Udemy HW



## Prerequisites

1. Install Ruby via [RailsInstaller](http://railsinstaller.org/en) *(install latest version)*

2. Clone the project

3. Open a command line and go into the directory

4. `bundle install`


## Instructions

Make a Sinatra application that lets me use the Udemy api to find out how many times a word has been searched for.

I must be able to pass the search term in question via the parameters to the `/` url of your application.

### Specifications - Part 1 [50 points]

1. Run server: `ruby web.rb`

2. If I go to `http://localhost:4567` I should get `Error: No Search Term Provided`

3. If I go to `http://localhost:4567/?term=` I should get `Error: Search Term Empty`

4. If I go to `http://localhost:4567/?term=java` I should get something like `java: 3720546`



### Specifications - Part 2 [50 points]

1. If I go to `http://localhost:4567/?term=java` I should get something like `java: 3720546` AND that number should come from using the `get_search_count(term)` method, which you will finish implementing

2. The `get_search_count(term)` method needs to actually go out and get the value from the internet.

   ​

