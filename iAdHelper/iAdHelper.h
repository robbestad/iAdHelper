//
//  iAdHelper.h
//
//  Created by Sven Anders Robbestad on 23.02.14.
//  Copyright (c) 2014 Sven Anders Robbestad. All rights reserved.
//  See LICENSE
//

#import <iAd/iAd.h>

#ifndef IADHELPER_LOGGING
    #define IADHELPER_LOGGING 0
#endif

@interface iAdHelper : NSObject

/**
 * Always access class through this singleton
 * Call it once on application start to initialize ads
 */
+(id) sharedHelper;


@property (atomic, retain) ADBannerView* bannerView;


@end
