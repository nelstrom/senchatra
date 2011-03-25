Senchatra is a simple Sinatra application that takes some of the drudge work out of working with Sencha Touch. It provides these conveniences:

* contents of .html files in the `templates` directory are inserted into the index.html file, wrapped in a `<textarea>` tag with `display:none;`.
* `<script>` tags are auto-generated for all .js files in the `public/app` directory.

## Setup

If you are on a mac and have [terminitor][] installed, just `cd` to this project directory, and run the following:

    terminitor setup
    terminitor start

The `terminitor setup` command runs:

    bundle install

And `terminitor start` will open a couple of tabs, launching the Sinatra server at [http://localhost:4567/][l], and watching the `theming/senchatra.scss` file for changes, which will be automatically compiled to `public/stylesheets/senchatra.css`. This is equivalent to the following:

    # Open a new tab and run:
    ruby application.rb
    
    # Open another new tab and run:
    cd theming
    compass watch

## Deploying to heroku

Create a heroku app by running:

    gem install heroku
    heroku create name-of-your-app

Then you can deploy your Sencha Touch app to Heroku by running:

    git push heroku master

The output from that command will show you the URL where your app lives.

[terminitor]: https://github.com/achiu/terminitor
[l]: http://localhost:4567/