## The Bibliophile

<img src="readme_images/Screenshot from 2021-06-26 22-56-42.png" width="1000" height="560">

This is somewhat like a book store. People can see the list of all books available in the store. All the books will be listed by their thumbnail image along with the price and it's name. When they click on the image, it gets directed to the show page, where there is a main image ( enlarged version of the thumbnail ) and details regarding the book such as name of the author, price, description, language, ISBN and the publisher's name.

<img src="readme_images/Screenshot from 2021-06-28 08-28-53.png" width="1000" height="560">

In order to add a book to the store, one needs to sign in.

<img src="readme_images/Screenshot from 2021-06-26 22-57-13.png" width="1000" height="560">

There is a Category drop-down added in the navigation bar where people can sort books according to the genre specified. Also a search bar is provided for users to search according to the name of the book.

<img src="readme_images/Screenshot from 2021-06-27 19-56-36.png" width="1000" height="560">

**

Things you may want to cover:
    

* How to run the app in your computer:
    
    First clone this repository. In the terminal type 
    
    `git clone https://github.com/judis007/the_bibliophile.git`
    
    Now a copy / clone of this files has been created in your computer. Now move into this folder by typing
    
    `cd the_bibliophile/`
    
    Now you are inside this folder. If what i am going to say seems a bit cryptic, don't worry. Just follow along. In the terminal type
    
    `rails db:setup`
    
    This will create all the databases and seed it with available data in the db/seeds.rb file
    
    You'll need to run 
    
    `rails db:migrate`
    
    to run all the migrations.
    
    Now you are almost there. Type
    
    `rails s`
    
    to start the server so that you can view the app by going to the http://localhost:3000
      
    
**
   
