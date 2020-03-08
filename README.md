## Memes vs Gifs

This app is my take on a meme or gif generator. A user can sign up or log in, afterwhich they are given their own profile. A user can create combinations of their favorite randomly-generated memes or gifs and captions. The created meme or gif and caption combo is saved to the database and displayed in the user's profile page, as well as the designated meme or gif show page for everyone's memes and gifs. A user can also create their own caption, which gets saved to the database, and that caption is available for selection by anyone. 

This app utilizes a Rails API back-end with a postgreSQL database, as well as a React.js front-end.

The Back-End: The following end-points are utilized in the API to fetch data:

'http://localhost:3000/api/v1/login' - Post request to Session create action to set a session ID for an existing user.

'http://localhost:3000/api/v1/signup' - Post request to User create action to sign up a new user.

'http://localhost:3000/api/v1/current_user' - Get request to custom route to keep a signed-in User logged in, even on page refresh.

'http://localhost:3000/api/v1/logout - Delete request to the destroy the signed-in user's session, logging them out.

'http://localhost:3000/api/v1/captions' - Get, Post and Delete requests to see all the captions from the database, create new captions, and delete a selected caption.

'http://localhost:3000/api/v1/auth_check' - Get request to custom route in Sessions controller to set the CSRF-Token every time App.js component mounts, storing in state, and able to send back with every request. 

'http://localhost:3000/api/v1/memes' - Get and post requests to populate app with User-created meme/caption combos, and delete them from their profile page.

'http://localhost:3000/api/v1/gifs' - Get and post requests to populate app with User-created gif/caption combos, and delete them from their profile page.

The Front-End: The front-end uses Javascript to asynchronously make get, post and patch requests to the API to populate the page with data and update the API. The data and functionality of the front-end was encapsulated in classes and methods.
