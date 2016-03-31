.gipht
======

Gipht is a simple chat app, with a one important difference - you can send GIF's, and only GIF's.


Gems, Libraries and API's Used
------------------------------

Gipht is built around a number of Gems, Libraries and API's. The most important being:

* [GifShot](https://yahoo.github.io/gifshot/) - A great JS library for recording GIF's through the device camera. In this project it is used to allow users to record their own GIF's to send to friends.
* [Giphy API](https://github.com/Giphy/GiphyAPI) - The "translate" endpoint of the Giphy API is used to allow users to send related GIF's directly generated through a text input.
* [Paperclip](https://github.com/thoughtbot/paperclip) - Paperclip is used in conjunction with Amazon S3 for image upload, to store user generated GIF's and profile images.

Limitations
___________

Regrettably the GIF record function is not currently available on Safari or Safari iOS, as these browsers don't support getUserMedia. Use Chrome.
