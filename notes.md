# command to start python server
    python3 -m http.server

# Models
    User :email, :password
        has_many :gifs, :memes
        has_many :captions, through :memes, :gifs

    Meme :id, :url
        belongs_to :user
        has_many :captions

    Gif :id, :url
        belongs_to :user
        has_many :captions

    Caption :id, :text (joins table)
        belongs_to :user
        belongs_to :commentable, (needs a :meme, :gif (needs to be polymorphic))


    rails polymorphism

    github.com/micahshute/odins-eye

# To-DO
[x] I have my polymorphic relationship set up (captions are captionable). But is it set up correctly??? NOPE! Superclass mismatch error! Something is off with either: routes, controller namespacing, the index action (that's what I'm thinking most). 

[x] Having trouble creating a caption in Rails console, and even more trouble seeding my DB with my list of captions.

[] Link my backend (Rails) to my frontend (React).
        Get the CSFR Token stuff set up (I know that will mean changing around my fetches a little with the correct header info, etc.)

        Are my routes correct and doing the right thing?

[x] Replace the captions fetch in React with rails/api captions json.

[]  In React, have to create the following components:
        User sign-up/login form.
        Saved Memes show page (any saved meme, with name of user)
        Saved Gifs show page (any saved gifs, with name of user)
        User profile page that shows only that user's saved memes and gifs.

[x]join table: joining a captions to captionable
    join table CaptionCaptionable

    captions has_many CaptionCaptionable, 
    has_many captionable through captionCaptionable


