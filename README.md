iAdHelper
=========

Objective-C Helper class to ease integration with iAD for Cocos2D v3 


Usage
=========
* Add the files in the iAdHelper folder to your project
* Include "iAdHelper.h" in your implementation file
* In your init method, add *[iAdHelper sharedHelper];*
* Ads are display at the top of screen as default. 
* To explicitly set the position, include the following parameter
* *[iAdHelper setBannerPosition:BOTTOM];* (alternatives are TOP or BOTTOM)

That's it. Ads are enabled.


Sample Init
=========

	- (void)didLoadFromCCB {
    	[iAdHelper sharedHelper];
    	[iAdHelper setBannerPosition:BOTTOM];
	}


==========
Live Demo
Check out https://itunes.apple.com/us/app/rocketdoge/id813052886 where this implementation is added to every scene
