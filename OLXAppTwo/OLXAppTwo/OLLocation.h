//
//  OLLocation.h
//  OLXAppTwo
//
//  Created by Amit Priyadarshi on 26/09/15.
//  Copyright (c) 2015 Amit Priyadarshi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class OLAdObject;

@interface OLLocation : NSManagedObject

@property (nonatomic, retain) NSNumber * latitude;
@property (nonatomic, retain) NSNumber * longitude;
@property (nonatomic, retain) NSString * address;
@property (nonatomic, retain) OLAdObject *forAd;
+ (OLLocation*)newAdObjectFromDictionary:(NSDictionary*)dict;
- (void)setPropertiesFromDictionary:(NSDictionary*)dict;

@end
