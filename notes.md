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

