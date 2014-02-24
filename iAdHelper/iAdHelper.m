//
//  iAdHelper.m
//  Rocket Doge
//
//  Created by Sven Anders Robbestad on 23.02.14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "iAdHelper.h"

@interface iAdHelper () <ADBannerViewDelegate>
@end


@implementation iAdHelper

@synthesize bannerView = _bannerView;

#pragma mark - Singleton
+(id) sharedHelper
{
    static ADBannerView *sharedHelper = nil;
    static dispatch_once_t once = 0;
    dispatch_once(&once, ^{sharedHelper = [[self alloc] init];});
    return sharedHelper;
}

#pragma mark - Initializer
-(id) init
{
    if( (self= [super init]) )
    {
        // On iOS 6 ADBannerView introduces a new initializer, use it when available.
        if ([ADBannerView instancesRespondToSelector:@selector(initWithAdType:)]) {
            _bannerView = [[ADBannerView alloc] initWithAdType:ADAdTypeBanner];
            
        } else {
            _bannerView = [[ADBannerView alloc] init];
        }
        
        CGRect contentFrame = [CCDirector sharedDirector].view.bounds;
        if (contentFrame.size.width < contentFrame.size.height) {
            _bannerView.requiredContentSizeIdentifiers = [NSSet setWithObject:ADBannerContentSizeIdentifierPortrait];
            _bannerView.currentContentSizeIdentifier = ADBannerContentSizeIdentifierPortrait;
        } else {
            _bannerView.requiredContentSizeIdentifiers = [NSSet setWithObject:ADBannerContentSizeIdentifierLandscape];
            _bannerView.currentContentSizeIdentifier = ADBannerContentSizeIdentifierLandscape;
        }
        
        [[[CCDirector sharedDirector]view]addSubview:_bannerView];
        [_bannerView setBackgroundColor:[UIColor clearColor]];
        [[[CCDirector sharedDirector]view]addSubview:_bannerView];
        _bannerView.delegate = self;
        
    }
    [[[CCDirector sharedDirector]view]bringSubviewToFront:_bannerView];

    [self layoutAnimated:YES];
    return self;

}


- (void)layoutAnimated:(BOOL)animated
{
    // As of iOS 6.0, the banner will automatically resize itself based on its width.
    // To support iOS 5.0 however, we continue to set the currentContentSizeIdentifier appropriately.
    CGRect contentFrame = [CCDirector sharedDirector].view.bounds;
    
    if (contentFrame.size.width < contentFrame.size.height) {
        _bannerView.currentContentSizeIdentifier = ADBannerContentSizeIdentifierPortrait;
    } else {
        _bannerView.currentContentSizeIdentifier = ADBannerContentSizeIdentifierLandscape;
    }
    
     
    CGRect bannerFrame = _bannerView.frame;
    if (_bannerView.bannerLoaded) {
        contentFrame.size.height -= _bannerView.frame.size.height;
        bannerFrame.origin.y = contentFrame.size.height;
    } else {
        bannerFrame.origin.y = contentFrame.size.height;
    }
    
    [UIView animateWithDuration:animated ? 0.25 : 0.0 animations:^{
        _bannerView.frame = bannerFrame;
    }];
}

- (void)bannerViewDidLoadAd:(ADBannerView *)banner {
    if (IADHELPER_LOGGING)  NSLog(@"Successfully loaded banner");
    [self layoutAnimated:YES];
}

- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error {
    if (IADHELPER_LOGGING) NSLog(@"Failed to load banner with error: %@ ",error);
    [self layoutAnimated:YES];
}



@end
