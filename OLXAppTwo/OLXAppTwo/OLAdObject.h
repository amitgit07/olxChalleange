//
//  OLAdObject.h
//  OLXAppTwo
//
//  Created by Amit Priyadarshi on 26/09/15.
//  Copyright (c) 2015 Amit Priyadarshi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class OLCategory, OLLocation;

@interface OLAdObject : NSManagedObject

@property (nonatomic, retain) NSString * details;
@property (nonatomic, retain) NSString * imagePath;
@property (nonatomic, retain) NSString * imageUrl;
@property (nonatomic, retain) NSNumber * objId;
@property (nonatomic, retain) OLCategory *inCategory;
@property (nonatomic, retain) OLLocation *location;

+ (OLAdObject*)newAdObjectFromDictionary:(NSDictionary*)dict;
+ (OLAdObject*)adWithID:(NSUInteger)adId;
- (void)setPropertiesFromDictionary:(NSDictionary*)dict;
@end
