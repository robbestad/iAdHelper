iAdHelper
=========

Objective-C Helper class to ease integration with iAD for Cocos2D v3 


Usage
=========
* Add the files in the iAdHelper folder to your project
* Include "iAdHelper.h" in your implementation file
* In your init method, add *[iAdHelper sharedHelper];*

That's it. Ads are enabled.

New as of Sept 2. 12014
========
* Ads now display on top as default. To explicitly set the position, include the following parameter *[iAdHelper setBannerPosition:BOTTOM];* (alternatives are TOP or BOTTOM)


==========
Live Demo
Check out https://itunes.apple.com/us/app/rocketdoge/id813052886 where this implementation is added to every scene
