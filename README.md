## Giphy Messages

#### Powered by [Giphy](http://giphy.com/)

### Install

0. Download [Giphy Messages.app]()

0. Move the app to your Applications folder

0. Double click to open the app

0. Go to **Messages > Preferences > AppleScript Handler** and select **Giphy.applescript**

### Hack

All the code is interpreted and exposed in *Giphy Messages.app* with no external
requirements, so it should be easy to open up the app bundle and hack however
you'd like. You can open the app bundle by right clicking on
*Giphy Messages.app* and selecting *Show Package Contents*. If you make a change
you think other users would appreciate, fork the repository and create a Pull
Request!

### Details

*Giphy.applescript* must be copied into
*~/Library/Application\ Scripts/com.apple.iChat* then selected under
**Messages > Preferences > AppleScript Handler**.

*Giphy.applescript* expects *giphy.py* and *send_message.applescript* to live
inside the app in the */Applications* directory. Change `theScript` in
*Giphy.applescript* if you'd like to develop with the *giphy.py* and
*send_message.applescript* elsewhere.

We distribute an app since it's the easiest way to make sure we can find
*giphy.py*. AppleScript doesn't have the support to make and parse web requests.

The app is build using [Platypus](http://www.sveinbjorn.org/platypus) with the
profile *Giphy Messages.platypus*. You'll need to change the paths to reference
your own installation to build locally.
