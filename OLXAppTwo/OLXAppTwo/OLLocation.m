//
//  OLLocation.m
//  OLXAppTwo
//
//  Created by Amit Priyadarshi on 26/09/15.
//  Copyright (c) 2015 Amit Priyadarshi. All rights reserved.
//

#import "OLLocation.h"
#import "OLAdObject.h"
#import "Contants.h"


@implementation OLLocation

@dynamic latitude;
@dynamic longitude;
@dynamic address;
@dynamic forAd;
+ (OLLocation*)newAdObjectFromDictionary:(NSDictionary*)dict {
    if (!dict) return nil;
    OLLocation* newObj = [NSEntityDescription insertNewObjectForEntityForName:@"OLLocation" inManagedObjectContext:MOC];
    [newObj setPropertiesFromDictionary:dict];
    return newObj;
}
- (void)setPropertiesFromDictionary:(NSDictionary*)dict {
    if (!dict) return;
    
    self.address = NullObjectReplace(dict, @"address", @(0));
    self.latitude = [NSNumber numberWithDouble:[NullObjectReplace(dict, @"latitude", @(0)) doubleValue]];
    self.longitude = [NSNumber numberWithDouble:[NullObjectReplace(dict, @"longitude", @(0)) doubleValue]];
}

@end
