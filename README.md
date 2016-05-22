.gipht
======

Gipht is a simple chat app, with a one important difference - you can send GIF's, and only GIF's. You're able to record gifs directly from your browser, then immediately send them to private or group conversations with your friends. It's also possible to communicate using pre-existing gif's using the translate function (this allows you to type in a few words, and the Giphy API translates it into an appropriate gif). If you'd like to try it out, sign up for an account [here](https://gipht.herokuapp.com/sign_up).


Gems, Libraries and API's Used
------------------------------

Gipht is a Rails app at heart, and it's built around a number of Gems, Libraries and API's. The most important being:

* [GifShot](https://yahoo.github.io/gifshot/) - A great JS library for recording GIF's through the device camera. In this project it is used to allow users to record their own GIF's to send to friends.
* [Giphy API](https://github.com/Giphy/GiphyAPI) - The "translate" endpoint of the Giphy API is used to allow users to send related GIF's directly generated through a text input.
* [Paperclip](https://github.com/thoughtbot/paperclip) - Paperclip is used in conjunction with Amazon S3 for image upload, to store user generated GIF's and profile images.

Limitations
-----------

Regrettably the GIF record function is not currently available on Safari or Safari iOS, as these browsers don't support getUserMedia. Use Chrome.
