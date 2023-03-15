67-272: University 
---

This project was created as means of giving students an opportunity to practice course concepts with some in-class learning exercises. There is no pretense that this is a production-ready system or that it has 100 percent test coverage -- these are for learning purposes.  

This version is for an exercise in building an API endpoint.  Specifically, you need to build a `DepartmentSerializer` that will create the JSON example found in the `docs` directory.

Start with the following steps:

1. Begin by running `bundle install` on the command line so that you get all the gems, including the fastjson gem you need for serializing.

2. Build the database and populate it with the context by running `rails db:contexts`. This will give you a series of departments, faculty, courses, and assignments to work with.

3. If you don't have it installed already, install the [JSON Formatter extension for Chrome](https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa). There is a similar [JSON extension for Safari here](https://apps.apple.com/us/app/prettyjson-for-safari/id1445328303?mt=12), if that is your browser of choice.

4. Open up the file `docs/departments.json` to see the JSON we want our API to generate.

5. Open the other two serializer files in `app/serializers` to see what you have to work with and see other examples of serializers.  Look at the structure and see where these serializers are being used in the sample JSON output right now.
  
6. Create the serializer you need with the `rails g serializer department` command and then flesh out that serializer (using the other serializers as appropriate) so that it create the json as seen in the sample given.

7. You can test this API endpoint out by starting the server (if you are using Codio, don't forget to configure it) and going to `localhost:3000/v1/departments` (or whatever address your server is running on) and seeing the JSON generated (formatted by the extension so it is readable). 

Qapla'

Prof. H

P.S. -- you may find it helpful to look at the `Department` model and its relationships as you plan you serializer's attributes.  Also, as a side note, if you had an array in Ruby with some duplicates and wanted only the unique values, you could append the `.uniq` method and purge duplicate elements. (This could be helpful ... wink, wink, nudge, nudge)