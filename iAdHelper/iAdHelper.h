 //
 //  iAdHelper.h
 //
 //  Created by Sven Anders Robbestad on 23.02.14.
 //  Copyright (c) 2014 Sven Anders Robbestad. All rights reserved.
 //  See LICENSE

#import <iAd/iAd.h>
#ifndef CC_DIRECTOR
#import "cocos2d.h"
#endif
#ifndef IADHELPER_LOGGING
    #define IADHELPER_LOGGING 0
#endif

typedef enum bannerPositionTypes
{
    TOP,
    BOTTOM,
} bannerPosition;

@interface iAdHelper : NSObject

/**
 * Always access class through this singleton
 * Call it once on application start to initialize ads
 */
+(id) sharedHelper;
+ (void)setBannerPosition:(bannerPosition)bannerPositionTypes;
+ (bannerPosition)getBannerPosition;


@property (atomic, retain) ADBannerView* bannerView;

@end
