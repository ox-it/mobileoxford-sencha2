# MobileOxford - Sencha Touch 2

Now with coffee script!

## Installation

Requirements

* Sencha touch 2 library
* Coffee script (thus npm and node.js)

###  Coffee script

Mac OS X using homebrew:

    brew install node

Ubuntu/Debian:
At the time of writing Ubuntu/Debian repositories hold an old version of npm. However, Ubuntu 11.10 has a reasonable version in the latest updates. If you're running something older, we recommend you install npm manually. 
 
    sudo apt-get install npm

this will install node.js and also the node package manager.

    npm install -g coffee-script

This will install coffee script globally. 

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



