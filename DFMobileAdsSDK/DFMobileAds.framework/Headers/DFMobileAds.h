//
//  DFMobileAds.h
//  DFMobileAds
//
//  Created by frank on 2018/5/21.
//  Copyright © 2018年 DF. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DFAdListViewController.h"

//! Project version number for DFMobileAds.
FOUNDATION_EXPORT double DFMobileAdsVersionNumber;

//! Project version string for DFMobileAds.
FOUNDATION_EXPORT const unsigned char DFMobileAdsVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <DFMobileAds/PublicHeader.h>

static NSString* DFUserkey = @"";
static NSString* DFAppKey = @"";
static NSString* Token = @"";

@interface DFMobileAds : NSObject

+ (void)configureWithUserkey:(NSString *)userkey withAppKey:(NSString*) appkey;
+ (NSString *) getUserKey;
+ (NSString *) getAppKey;
+ (NSString *) getToken;
+ (void) setToken:(NSString*)value;
@end

