# MobileOxford - Sencha Touch 2

Now with coffee script!

## Installation

Requirements

* Sencha touch 2 library
* Coffee script (thus npm and node.js)
* SASS (styling)

###  Coffee script

Mac OS X using homebrew:

    brew install node

Ubuntu/Debian:
At the time of writing Ubuntu/Debian repositories hold an old version of npm. However, Ubuntu 11.10 has a reasonable version in the latest updates. If you're running something older, we recommend you install npm manually. 
 
    sudo apt-get install npm

this will install node.js and also the node package manager.

    npm install -g coffee-script

This will install coffee script globally. 

## Running / compiling the app

You need to install CoffeeScript first (via Node Package Manager, which means that you also need to install Node.js first).

While developing, you can run the following command inside the src/ folder:

    coffee --bare --lint -o js/ -cw coffee/

--bare: removes the function safety wrapper
--lint: uses jslint (you need to install jslint separately)
-o: output in the js/ folder
-c: compile
-w watch the coffee/ folder




### Sencha touch 2 library

Download and extract the sencha touch 2 library to a folder of your choice. 
Move the files to an appropriate folder of your root web config. By default these are expected to be found at /sencha-touch/ .

## Apache configuration 

In order to use offline cache, .manifest files need to be served with a special mime type.

Add the following line to your Apache configuration file:

    AddType text/cache-manifest .manifest

In order to be able to debug offline caching issues correctly, you should enable the "expires" module and set on your vhost conf file:

    Header set Expires "Thu, 19 Nov 1981 08:52:00 GM"
    Header set Cache-Control "no-store, no-cache, must-revalidate, post-check=0, 	 pre-check=0"
    Header set Pragma "no-cache"
    Header unset ETag
    FileETag None

### Aliasing

Sencha touch library

    Alias /sencha-touch /location_of_your_sencha_touch

The application
    
    Alias /app /.../mobileoxford-sencha2/src/js/app


## Mobile Oxford application

The application is ready to support multiple profiles (e.g. phone, tablet), but we currently force the phone profile for every device.

### Conventions

One controller per app.

Each app should define a "main view" (root view).

Each view has to have a route; method for displaying each view should be named as: 
    
    show[view's name] (e.g. showWebcams)
    
This method should be able to restore the state of the view.

Methods to handle events should be named as:
    
    on[Component][Event] (e.g. onWebcamsListItemTap)

